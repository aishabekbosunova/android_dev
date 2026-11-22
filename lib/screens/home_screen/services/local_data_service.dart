import 'dart:async';

import 'package:android_dev/core/db/app_database.dart';
import 'package:android_dev/core/db/database_provider.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/comment_model.dart';

/// Local persistence API for posts, profiles and comments.
class LocalDataService {
  LocalDataService(this._database);

  final AppDatabase _database;

  // ── Posts ────────────────────────────────────────────────────────────────

  Stream<List<CachedPost>> watchPosts() {
    final query = _database.select(_database.cachedPosts)
      ..orderBy([(post) => OrderingTerm.desc(post.id)]);
    return query.watch();
  }

  Future<List<CachedPost>> getPosts() =>
      _database.select(_database.cachedPosts).get();

  Future<CachedPost?> getPost(String id) =>
      (_database.select(_database.cachedPosts)
            ..where((post) => post.id.equals(id)))
          .getSingleOrNull();

  Future<void> savePost(CachedPostsCompanion post) =>
      _database.into(_database.cachedPosts).insertOnConflictUpdate(post);

  Future<void> savePosts(List<CachedPostsCompanion> posts) async {
    await _database
        .batch((batch) => batch.insertAllOnConflictUpdate(_database.cachedPosts, posts));
  }

  Future<void> deletePost(String id) =>
      (_database.delete(_database.cachedPosts)
            ..where((post) => post.id.equals(id)))
          .go();

  Future<void> toggleLike(CachedPost post) {
    final isLiked = !post.isLiked;
    return (_database.update(_database.cachedPosts)
          ..where((row) => row.id.equals(post.id)))
        .write(CachedPostsCompanion(
          isLiked: Value(isLiked),
          likes: Value(post.likes + (isLiked ? 1 : -1)),
        ));
  }

  // ── Profiles ─────────────────────────────────────────────────────────────

  Stream<List<UserProfile>> watchProfiles() =>
      _database.select(_database.userProfiles).watch();

  Future<UserProfile?> getProfile(String id) =>
      (_database.select(_database.userProfiles)
            ..where((profile) => profile.id.equals(id)))
          .getSingleOrNull();

  Future<void> saveProfile(UserProfilesCompanion profile) =>
      _database.into(_database.userProfiles).insertOnConflictUpdate(profile);

  Stream<UserProfile?> watchProfile(String id) =>
      (_database.select(_database.userProfiles)
            ..where((profile) => profile.id.equals(id)))
          .watchSingleOrNull();

  // ── Comments (Drift table) ────────────────────────────────────────────────

  Stream<List<CommentModel>> watchComments(String postId) =>
      (_database.select(_database.postComments)
            ..where((c) => c.postId.equals(postId))
            ..orderBy([(c) => OrderingTerm.asc(c.createdAt)]))
          .watch()
          .map((rows) => rows
              .map((r) => CommentModel(
                    id: r.id,
                    authorName: r.authorName,
                    body: r.body,
                    createdAt: DateTime.fromMillisecondsSinceEpoch(r.createdAt),
                  ))
              .toList());

  Future<void> addComment({
    required String postId,
    required String body,
    required String authorName,
  }) async {
    final now = DateTime.now();
    await _database.into(_database.postComments).insert(
          PostCommentsCompanion.insert(
            id: 'comment-${now.microsecondsSinceEpoch}',
            postId: postId,
            authorName: authorName,
            body: body,
            createdAt: now.millisecondsSinceEpoch,
          ),
        );
    // Keep commentCount on the post in sync
    final post = await getPost(postId);
    if (post != null) {
      await (_database.update(_database.cachedPosts)
            ..where((p) => p.id.equals(postId)))
          .write(CachedPostsCompanion(
            commentCount: Value(post.commentCount + 1),
          ));
    }
  }
}

final localDataServiceProvider = Provider<LocalDataService>(
  (ref) => LocalDataService(ref.watch(databaseProvider)),
);
