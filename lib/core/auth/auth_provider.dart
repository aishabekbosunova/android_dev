import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../db/app_database.dart';
import '../db/database_provider.dart';

String _hash(String password) =>
    sha256.convert(utf8.encode(password)).toString();

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier(this._db) : super(false) {
    _init();
  }

  final AppDatabase _db;

  /// On startup: check if there's an active session in the DB.
  Future<void> _init() async {
    final profile = await (_db.select(_db.userProfiles)
          ..where((p) => p.isActive.equals(true)))
        .getSingleOrNull();
    state = profile != null;
  }

  /// Register a new account (single-device, id = 'me').
  /// Returns an error string on failure, null on success.
  Future<String?> register(String nickname, String password) async {
    final existing = await (_db.select(_db.userProfiles)
          ..where((p) => p.id.equals('me')))
        .getSingleOrNull();
    if (existing != null) return 'Account already exists. Please log in.';

    await _db.into(_db.userProfiles).insert(
          UserProfilesCompanion.insert(
            id: 'me',
            nickname: nickname,
            passwordHash: Value(_hash(password)),
            isActive: const Value(true),
            createdAt: Value(DateTime.now().millisecondsSinceEpoch),
          ),
        );
    state = true;
    return null;
  }

  /// Log in with existing nickname + password.
  /// Returns an error string on failure, null on success.
  Future<String?> login(String nickname, String password) async {
    final profile = await (_db.select(_db.userProfiles)
          ..where((p) => p.id.equals('me')))
        .getSingleOrNull();
    if (profile == null) return 'No account found. Please register first.';
    if (profile.nickname != nickname) return 'Wrong nickname.';
    if (profile.passwordHash != _hash(password)) return 'Wrong password.';

    await (_db.update(_db.userProfiles)..where((p) => p.id.equals('me')))
        .write(const UserProfilesCompanion(isActive: Value(true)));
    state = true;
    return null;
  }

  /// Log out — clears the active flag; profile + posts stay in the DB.
  Future<void> logout() async {
    await (_db.update(_db.userProfiles)..where((p) => p.id.equals('me')))
        .write(const UserProfilesCompanion(isActive: Value(false)));
    state = false;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>(
  (ref) => AuthNotifier(ref.watch(databaseProvider)),
);
