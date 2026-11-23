import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class CachedPosts extends Table {
  TextColumn get id => text()();
  TextColumn get authorId => text()();
  TextColumn get authorName => text()();
  TextColumn get imageUrl => text()();
  TextColumn get caption => text()();
  IntColumn get likes => integer().withDefault(const Constant(0))();
  BoolColumn get isLiked => boolean().withDefault(const Constant(false))();
  IntColumn get commentCount => integer().withDefault(const Constant(0))();
  IntColumn get createdAt => integer().withDefault(const Constant(0))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class UserProfiles extends Table {
  TextColumn get id => text()();
  TextColumn get nickname => text()();
  TextColumn get avatarUrl => text().nullable()();
  TextColumn get bio => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get passwordHash => text().nullable()();
  BoolColumn get isActive => boolean().withDefault(const Constant(false))();
  IntColumn get createdAt => integer().withDefault(const Constant(0))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

class PostComments extends Table {
  TextColumn get id => text()();
  TextColumn get postId => text()();
  TextColumn get authorName => text()();
  TextColumn get body => text()();
  IntColumn get createdAt => integer()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}

@DriftDatabase(tables: [CachedPosts, UserProfiles, PostComments])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
    : super(
        driftDatabase(
          name: 'social_app',
          native: const DriftNativeOptions(shareAcrossIsolates: true),
        ),
      );

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.addColumn(cachedPosts, cachedPosts.commentCount);
        await m.addColumn(cachedPosts, cachedPosts.createdAt);
        await m.addColumn(userProfiles, userProfiles.bio);
        await m.addColumn(userProfiles, userProfiles.email);
        await m.addColumn(userProfiles, userProfiles.passwordHash);
        await m.addColumn(userProfiles, userProfiles.isActive);
        await m.addColumn(userProfiles, userProfiles.createdAt);
        // Drop old raw-SQL table and recreate as a proper Drift table
        await customStatement('DROP TABLE IF EXISTS post_comments');
        await m.createTable(postComments);
      }
    },
  );
}
