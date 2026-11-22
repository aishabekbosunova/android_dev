// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CachedPostsTable extends CachedPosts
    with TableInfo<$CachedPostsTable, CachedPost> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedPostsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorIdMeta = const VerificationMeta(
    'authorId',
  );
  @override
  late final GeneratedColumn<String> authorId = GeneratedColumn<String>(
    'author_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorNameMeta = const VerificationMeta(
    'authorName',
  );
  @override
  late final GeneratedColumn<String> authorName = GeneratedColumn<String>(
    'author_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _captionMeta = const VerificationMeta(
    'caption',
  );
  @override
  late final GeneratedColumn<String> caption = GeneratedColumn<String>(
    'caption',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _likesMeta = const VerificationMeta('likes');
  @override
  late final GeneratedColumn<int> likes = GeneratedColumn<int>(
    'likes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isLikedMeta = const VerificationMeta(
    'isLiked',
  );
  @override
  late final GeneratedColumn<bool> isLiked = GeneratedColumn<bool>(
    'is_liked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_liked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _commentCountMeta = const VerificationMeta(
    'commentCount',
  );
  @override
  late final GeneratedColumn<int> commentCount = GeneratedColumn<int>(
    'comment_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    authorId,
    authorName,
    imageUrl,
    caption,
    likes,
    isLiked,
    commentCount,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_posts';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedPost> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('author_id')) {
      context.handle(
        _authorIdMeta,
        authorId.isAcceptableOrUnknown(data['author_id']!, _authorIdMeta),
      );
    } else if (isInserting) {
      context.missing(_authorIdMeta);
    }
    if (data.containsKey('author_name')) {
      context.handle(
        _authorNameMeta,
        authorName.isAcceptableOrUnknown(data['author_name']!, _authorNameMeta),
      );
    } else if (isInserting) {
      context.missing(_authorNameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('caption')) {
      context.handle(
        _captionMeta,
        caption.isAcceptableOrUnknown(data['caption']!, _captionMeta),
      );
    } else if (isInserting) {
      context.missing(_captionMeta);
    }
    if (data.containsKey('likes')) {
      context.handle(
        _likesMeta,
        likes.isAcceptableOrUnknown(data['likes']!, _likesMeta),
      );
    }
    if (data.containsKey('is_liked')) {
      context.handle(
        _isLikedMeta,
        isLiked.isAcceptableOrUnknown(data['is_liked']!, _isLikedMeta),
      );
    }
    if (data.containsKey('comment_count')) {
      context.handle(
        _commentCountMeta,
        commentCount.isAcceptableOrUnknown(
          data['comment_count']!,
          _commentCountMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedPost map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedPost(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      authorId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_id'],
      )!,
      authorName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_name'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
      caption: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}caption'],
      )!,
      likes: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}likes'],
      )!,
      isLiked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_liked'],
      )!,
      commentCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}comment_count'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CachedPostsTable createAlias(String alias) {
    return $CachedPostsTable(attachedDatabase, alias);
  }
}

class CachedPost extends DataClass implements Insertable<CachedPost> {
  final String id;
  final String authorId;
  final String authorName;
  final String imageUrl;
  final String caption;
  final int likes;
  final bool isLiked;
  final int commentCount;
  final int createdAt;
  const CachedPost({
    required this.id,
    required this.authorId,
    required this.authorName,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.isLiked,
    required this.commentCount,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['author_id'] = Variable<String>(authorId);
    map['author_name'] = Variable<String>(authorName);
    map['image_url'] = Variable<String>(imageUrl);
    map['caption'] = Variable<String>(caption);
    map['likes'] = Variable<int>(likes);
    map['is_liked'] = Variable<bool>(isLiked);
    map['comment_count'] = Variable<int>(commentCount);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  CachedPostsCompanion toCompanion(bool nullToAbsent) {
    return CachedPostsCompanion(
      id: Value(id),
      authorId: Value(authorId),
      authorName: Value(authorName),
      imageUrl: Value(imageUrl),
      caption: Value(caption),
      likes: Value(likes),
      isLiked: Value(isLiked),
      commentCount: Value(commentCount),
      createdAt: Value(createdAt),
    );
  }

  factory CachedPost.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedPost(
      id: serializer.fromJson<String>(json['id']),
      authorId: serializer.fromJson<String>(json['authorId']),
      authorName: serializer.fromJson<String>(json['authorName']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      caption: serializer.fromJson<String>(json['caption']),
      likes: serializer.fromJson<int>(json['likes']),
      isLiked: serializer.fromJson<bool>(json['isLiked']),
      commentCount: serializer.fromJson<int>(json['commentCount']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'authorId': serializer.toJson<String>(authorId),
      'authorName': serializer.toJson<String>(authorName),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'caption': serializer.toJson<String>(caption),
      'likes': serializer.toJson<int>(likes),
      'isLiked': serializer.toJson<bool>(isLiked),
      'commentCount': serializer.toJson<int>(commentCount),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  CachedPost copyWith({
    String? id,
    String? authorId,
    String? authorName,
    String? imageUrl,
    String? caption,
    int? likes,
    bool? isLiked,
    int? commentCount,
    int? createdAt,
  }) => CachedPost(
    id: id ?? this.id,
    authorId: authorId ?? this.authorId,
    authorName: authorName ?? this.authorName,
    imageUrl: imageUrl ?? this.imageUrl,
    caption: caption ?? this.caption,
    likes: likes ?? this.likes,
    isLiked: isLiked ?? this.isLiked,
    commentCount: commentCount ?? this.commentCount,
    createdAt: createdAt ?? this.createdAt,
  );
  CachedPost copyWithCompanion(CachedPostsCompanion data) {
    return CachedPost(
      id: data.id.present ? data.id.value : this.id,
      authorId: data.authorId.present ? data.authorId.value : this.authorId,
      authorName: data.authorName.present
          ? data.authorName.value
          : this.authorName,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      caption: data.caption.present ? data.caption.value : this.caption,
      likes: data.likes.present ? data.likes.value : this.likes,
      isLiked: data.isLiked.present ? data.isLiked.value : this.isLiked,
      commentCount: data.commentCount.present
          ? data.commentCount.value
          : this.commentCount,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedPost(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('authorName: $authorName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('caption: $caption, ')
          ..write('likes: $likes, ')
          ..write('isLiked: $isLiked, ')
          ..write('commentCount: $commentCount, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    authorId,
    authorName,
    imageUrl,
    caption,
    likes,
    isLiked,
    commentCount,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedPost &&
          other.id == this.id &&
          other.authorId == this.authorId &&
          other.authorName == this.authorName &&
          other.imageUrl == this.imageUrl &&
          other.caption == this.caption &&
          other.likes == this.likes &&
          other.isLiked == this.isLiked &&
          other.commentCount == this.commentCount &&
          other.createdAt == this.createdAt);
}

class CachedPostsCompanion extends UpdateCompanion<CachedPost> {
  final Value<String> id;
  final Value<String> authorId;
  final Value<String> authorName;
  final Value<String> imageUrl;
  final Value<String> caption;
  final Value<int> likes;
  final Value<bool> isLiked;
  final Value<int> commentCount;
  final Value<int> createdAt;
  final Value<int> rowid;
  const CachedPostsCompanion({
    this.id = const Value.absent(),
    this.authorId = const Value.absent(),
    this.authorName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.caption = const Value.absent(),
    this.likes = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.commentCount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedPostsCompanion.insert({
    required String id,
    required String authorId,
    required String authorName,
    required String imageUrl,
    required String caption,
    this.likes = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.commentCount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       authorId = Value(authorId),
       authorName = Value(authorName),
       imageUrl = Value(imageUrl),
       caption = Value(caption);
  static Insertable<CachedPost> custom({
    Expression<String>? id,
    Expression<String>? authorId,
    Expression<String>? authorName,
    Expression<String>? imageUrl,
    Expression<String>? caption,
    Expression<int>? likes,
    Expression<bool>? isLiked,
    Expression<int>? commentCount,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (authorId != null) 'author_id': authorId,
      if (authorName != null) 'author_name': authorName,
      if (imageUrl != null) 'image_url': imageUrl,
      if (caption != null) 'caption': caption,
      if (likes != null) 'likes': likes,
      if (isLiked != null) 'is_liked': isLiked,
      if (commentCount != null) 'comment_count': commentCount,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedPostsCompanion copyWith({
    Value<String>? id,
    Value<String>? authorId,
    Value<String>? authorName,
    Value<String>? imageUrl,
    Value<String>? caption,
    Value<int>? likes,
    Value<bool>? isLiked,
    Value<int>? commentCount,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return CachedPostsCompanion(
      id: id ?? this.id,
      authorId: authorId ?? this.authorId,
      authorName: authorName ?? this.authorName,
      imageUrl: imageUrl ?? this.imageUrl,
      caption: caption ?? this.caption,
      likes: likes ?? this.likes,
      isLiked: isLiked ?? this.isLiked,
      commentCount: commentCount ?? this.commentCount,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (authorId.present) {
      map['author_id'] = Variable<String>(authorId.value);
    }
    if (authorName.present) {
      map['author_name'] = Variable<String>(authorName.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (caption.present) {
      map['caption'] = Variable<String>(caption.value);
    }
    if (likes.present) {
      map['likes'] = Variable<int>(likes.value);
    }
    if (isLiked.present) {
      map['is_liked'] = Variable<bool>(isLiked.value);
    }
    if (commentCount.present) {
      map['comment_count'] = Variable<int>(commentCount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedPostsCompanion(')
          ..write('id: $id, ')
          ..write('authorId: $authorId, ')
          ..write('authorName: $authorName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('caption: $caption, ')
          ..write('likes: $likes, ')
          ..write('isLiked: $isLiked, ')
          ..write('commentCount: $commentCount, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserProfilesTable extends UserProfiles
    with TableInfo<$UserProfilesTable, UserProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nicknameMeta = const VerificationMeta(
    'nickname',
  );
  @override
  late final GeneratedColumn<String> nickname = GeneratedColumn<String>(
    'nickname',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bioMeta = const VerificationMeta('bio');
  @override
  late final GeneratedColumn<String> bio = GeneratedColumn<String>(
    'bio',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _passwordHashMeta = const VerificationMeta(
    'passwordHash',
  );
  @override
  late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>(
    'password_hash',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nickname,
    avatarUrl,
    bio,
    email,
    passwordHash,
    isActive,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('nickname')) {
      context.handle(
        _nicknameMeta,
        nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta),
      );
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    }
    if (data.containsKey('bio')) {
      context.handle(
        _bioMeta,
        bio.isAcceptableOrUnknown(data['bio']!, _bioMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('password_hash')) {
      context.handle(
        _passwordHashMeta,
        passwordHash.isAcceptableOrUnknown(
          data['password_hash']!,
          _passwordHashMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      nickname: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nickname'],
      )!,
      avatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_url'],
      ),
      bio: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bio'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      passwordHash: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password_hash'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $UserProfilesTable createAlias(String alias) {
    return $UserProfilesTable(attachedDatabase, alias);
  }
}

class UserProfile extends DataClass implements Insertable<UserProfile> {
  final String id;
  final String nickname;
  final String? avatarUrl;
  final String? bio;
  final String? email;
  final String? passwordHash;
  final bool isActive;
  final int createdAt;
  const UserProfile({
    required this.id,
    required this.nickname,
    this.avatarUrl,
    this.bio,
    this.email,
    this.passwordHash,
    required this.isActive,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['nickname'] = Variable<String>(nickname);
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || bio != null) {
      map['bio'] = Variable<String>(bio);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || passwordHash != null) {
      map['password_hash'] = Variable<String>(passwordHash);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  UserProfilesCompanion toCompanion(bool nullToAbsent) {
    return UserProfilesCompanion(
      id: Value(id),
      nickname: Value(nickname),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      bio: bio == null && nullToAbsent ? const Value.absent() : Value(bio),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      passwordHash: passwordHash == null && nullToAbsent
          ? const Value.absent()
          : Value(passwordHash),
      isActive: Value(isActive),
      createdAt: Value(createdAt),
    );
  }

  factory UserProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfile(
      id: serializer.fromJson<String>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      bio: serializer.fromJson<String?>(json['bio']),
      email: serializer.fromJson<String?>(json['email']),
      passwordHash: serializer.fromJson<String?>(json['passwordHash']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nickname': serializer.toJson<String>(nickname),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'bio': serializer.toJson<String?>(bio),
      'email': serializer.toJson<String?>(email),
      'passwordHash': serializer.toJson<String?>(passwordHash),
      'isActive': serializer.toJson<bool>(isActive),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  UserProfile copyWith({
    String? id,
    String? nickname,
    Value<String?> avatarUrl = const Value.absent(),
    Value<String?> bio = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> passwordHash = const Value.absent(),
    bool? isActive,
    int? createdAt,
  }) => UserProfile(
    id: id ?? this.id,
    nickname: nickname ?? this.nickname,
    avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
    bio: bio.present ? bio.value : this.bio,
    email: email.present ? email.value : this.email,
    passwordHash: passwordHash.present ? passwordHash.value : this.passwordHash,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt ?? this.createdAt,
  );
  UserProfile copyWithCompanion(UserProfilesCompanion data) {
    return UserProfile(
      id: data.id.present ? data.id.value : this.id,
      nickname: data.nickname.present ? data.nickname.value : this.nickname,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      bio: data.bio.present ? data.bio.value : this.bio,
      email: data.email.present ? data.email.value : this.email,
      passwordHash: data.passwordHash.present
          ? data.passwordHash.value
          : this.passwordHash,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfile(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('bio: $bio, ')
          ..write('email: $email, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    nickname,
    avatarUrl,
    bio,
    email,
    passwordHash,
    isActive,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfile &&
          other.id == this.id &&
          other.nickname == this.nickname &&
          other.avatarUrl == this.avatarUrl &&
          other.bio == this.bio &&
          other.email == this.email &&
          other.passwordHash == this.passwordHash &&
          other.isActive == this.isActive &&
          other.createdAt == this.createdAt);
}

class UserProfilesCompanion extends UpdateCompanion<UserProfile> {
  final Value<String> id;
  final Value<String> nickname;
  final Value<String?> avatarUrl;
  final Value<String?> bio;
  final Value<String?> email;
  final Value<String?> passwordHash;
  final Value<bool> isActive;
  final Value<int> createdAt;
  final Value<int> rowid;
  const UserProfilesCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.bio = const Value.absent(),
    this.email = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserProfilesCompanion.insert({
    required String id,
    required String nickname,
    this.avatarUrl = const Value.absent(),
    this.bio = const Value.absent(),
    this.email = const Value.absent(),
    this.passwordHash = const Value.absent(),
    this.isActive = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       nickname = Value(nickname);
  static Insertable<UserProfile> custom({
    Expression<String>? id,
    Expression<String>? nickname,
    Expression<String>? avatarUrl,
    Expression<String>? bio,
    Expression<String>? email,
    Expression<String>? passwordHash,
    Expression<bool>? isActive,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (bio != null) 'bio': bio,
      if (email != null) 'email': email,
      if (passwordHash != null) 'password_hash': passwordHash,
      if (isActive != null) 'is_active': isActive,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserProfilesCompanion copyWith({
    Value<String>? id,
    Value<String>? nickname,
    Value<String?>? avatarUrl,
    Value<String?>? bio,
    Value<String?>? email,
    Value<String?>? passwordHash,
    Value<bool>? isActive,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return UserProfilesCompanion(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      passwordHash: passwordHash ?? this.passwordHash,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (bio.present) {
      map['bio'] = Variable<String>(bio.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (passwordHash.present) {
      map['password_hash'] = Variable<String>(passwordHash.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfilesCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('bio: $bio, ')
          ..write('email: $email, ')
          ..write('passwordHash: $passwordHash, ')
          ..write('isActive: $isActive, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PostCommentsTable extends PostComments
    with TableInfo<$PostCommentsTable, PostComment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostCommentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _postIdMeta = const VerificationMeta('postId');
  @override
  late final GeneratedColumn<String> postId = GeneratedColumn<String>(
    'post_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorNameMeta = const VerificationMeta(
    'authorName',
  );
  @override
  late final GeneratedColumn<String> authorName = GeneratedColumn<String>(
    'author_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    postId,
    authorName,
    body,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'post_comments';
  @override
  VerificationContext validateIntegrity(
    Insertable<PostComment> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('post_id')) {
      context.handle(
        _postIdMeta,
        postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta),
      );
    } else if (isInserting) {
      context.missing(_postIdMeta);
    }
    if (data.containsKey('author_name')) {
      context.handle(
        _authorNameMeta,
        authorName.isAcceptableOrUnknown(data['author_name']!, _authorNameMeta),
      );
    } else if (isInserting) {
      context.missing(_authorNameMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PostComment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostComment(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      postId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}post_id'],
      )!,
      authorName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author_name'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $PostCommentsTable createAlias(String alias) {
    return $PostCommentsTable(attachedDatabase, alias);
  }
}

class PostComment extends DataClass implements Insertable<PostComment> {
  final String id;
  final String postId;
  final String authorName;
  final String body;
  final int createdAt;
  const PostComment({
    required this.id,
    required this.postId,
    required this.authorName,
    required this.body,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['post_id'] = Variable<String>(postId);
    map['author_name'] = Variable<String>(authorName);
    map['body'] = Variable<String>(body);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  PostCommentsCompanion toCompanion(bool nullToAbsent) {
    return PostCommentsCompanion(
      id: Value(id),
      postId: Value(postId),
      authorName: Value(authorName),
      body: Value(body),
      createdAt: Value(createdAt),
    );
  }

  factory PostComment.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostComment(
      id: serializer.fromJson<String>(json['id']),
      postId: serializer.fromJson<String>(json['postId']),
      authorName: serializer.fromJson<String>(json['authorName']),
      body: serializer.fromJson<String>(json['body']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'postId': serializer.toJson<String>(postId),
      'authorName': serializer.toJson<String>(authorName),
      'body': serializer.toJson<String>(body),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  PostComment copyWith({
    String? id,
    String? postId,
    String? authorName,
    String? body,
    int? createdAt,
  }) => PostComment(
    id: id ?? this.id,
    postId: postId ?? this.postId,
    authorName: authorName ?? this.authorName,
    body: body ?? this.body,
    createdAt: createdAt ?? this.createdAt,
  );
  PostComment copyWithCompanion(PostCommentsCompanion data) {
    return PostComment(
      id: data.id.present ? data.id.value : this.id,
      postId: data.postId.present ? data.postId.value : this.postId,
      authorName: data.authorName.present
          ? data.authorName.value
          : this.authorName,
      body: data.body.present ? data.body.value : this.body,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PostComment(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('authorName: $authorName, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, postId, authorName, body, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostComment &&
          other.id == this.id &&
          other.postId == this.postId &&
          other.authorName == this.authorName &&
          other.body == this.body &&
          other.createdAt == this.createdAt);
}

class PostCommentsCompanion extends UpdateCompanion<PostComment> {
  final Value<String> id;
  final Value<String> postId;
  final Value<String> authorName;
  final Value<String> body;
  final Value<int> createdAt;
  final Value<int> rowid;
  const PostCommentsCompanion({
    this.id = const Value.absent(),
    this.postId = const Value.absent(),
    this.authorName = const Value.absent(),
    this.body = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PostCommentsCompanion.insert({
    required String id,
    required String postId,
    required String authorName,
    required String body,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       postId = Value(postId),
       authorName = Value(authorName),
       body = Value(body),
       createdAt = Value(createdAt);
  static Insertable<PostComment> custom({
    Expression<String>? id,
    Expression<String>? postId,
    Expression<String>? authorName,
    Expression<String>? body,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (postId != null) 'post_id': postId,
      if (authorName != null) 'author_name': authorName,
      if (body != null) 'body': body,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PostCommentsCompanion copyWith({
    Value<String>? id,
    Value<String>? postId,
    Value<String>? authorName,
    Value<String>? body,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return PostCommentsCompanion(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      authorName: authorName ?? this.authorName,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (postId.present) {
      map['post_id'] = Variable<String>(postId.value);
    }
    if (authorName.present) {
      map['author_name'] = Variable<String>(authorName.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostCommentsCompanion(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('authorName: $authorName, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CachedPostsTable cachedPosts = $CachedPostsTable(this);
  late final $UserProfilesTable userProfiles = $UserProfilesTable(this);
  late final $PostCommentsTable postComments = $PostCommentsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cachedPosts,
    userProfiles,
    postComments,
  ];
}

typedef $$CachedPostsTableCreateCompanionBuilder =
    CachedPostsCompanion Function({
      required String id,
      required String authorId,
      required String authorName,
      required String imageUrl,
      required String caption,
      Value<int> likes,
      Value<bool> isLiked,
      Value<int> commentCount,
      Value<int> createdAt,
      Value<int> rowid,
    });
typedef $$CachedPostsTableUpdateCompanionBuilder =
    CachedPostsCompanion Function({
      Value<String> id,
      Value<String> authorId,
      Value<String> authorName,
      Value<String> imageUrl,
      Value<String> caption,
      Value<int> likes,
      Value<bool> isLiked,
      Value<int> commentCount,
      Value<int> createdAt,
      Value<int> rowid,
    });

class $$CachedPostsTableFilterComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get likes => $composableBuilder(
    column: $table.likes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedPostsTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorId => $composableBuilder(
    column: $table.authorId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get likes => $composableBuilder(
    column: $table.likes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLiked => $composableBuilder(
    column: $table.isLiked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedPostsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedPostsTable> {
  $$CachedPostsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get authorId =>
      $composableBuilder(column: $table.authorId, builder: (column) => column);

  GeneratedColumn<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get caption =>
      $composableBuilder(column: $table.caption, builder: (column) => column);

  GeneratedColumn<int> get likes =>
      $composableBuilder(column: $table.likes, builder: (column) => column);

  GeneratedColumn<bool> get isLiked =>
      $composableBuilder(column: $table.isLiked, builder: (column) => column);

  GeneratedColumn<int> get commentCount => $composableBuilder(
    column: $table.commentCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CachedPostsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CachedPostsTable,
          CachedPost,
          $$CachedPostsTableFilterComposer,
          $$CachedPostsTableOrderingComposer,
          $$CachedPostsTableAnnotationComposer,
          $$CachedPostsTableCreateCompanionBuilder,
          $$CachedPostsTableUpdateCompanionBuilder,
          (
            CachedPost,
            BaseReferences<_$AppDatabase, $CachedPostsTable, CachedPost>,
          ),
          CachedPost,
          PrefetchHooks Function()
        > {
  $$CachedPostsTableTableManager(_$AppDatabase db, $CachedPostsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedPostsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedPostsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedPostsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> authorId = const Value.absent(),
                Value<String> authorName = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<String> caption = const Value.absent(),
                Value<int> likes = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<int> commentCount = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedPostsCompanion(
                id: id,
                authorId: authorId,
                authorName: authorName,
                imageUrl: imageUrl,
                caption: caption,
                likes: likes,
                isLiked: isLiked,
                commentCount: commentCount,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String authorId,
                required String authorName,
                required String imageUrl,
                required String caption,
                Value<int> likes = const Value.absent(),
                Value<bool> isLiked = const Value.absent(),
                Value<int> commentCount = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CachedPostsCompanion.insert(
                id: id,
                authorId: authorId,
                authorName: authorName,
                imageUrl: imageUrl,
                caption: caption,
                likes: likes,
                isLiked: isLiked,
                commentCount: commentCount,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CachedPostsTable, CachedPost>(table),
                  BaseReferences<_$AppDatabase, $CachedPostsTable, CachedPost>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedPostsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CachedPostsTable,
      CachedPost,
      $$CachedPostsTableFilterComposer,
      $$CachedPostsTableOrderingComposer,
      $$CachedPostsTableAnnotationComposer,
      $$CachedPostsTableCreateCompanionBuilder,
      $$CachedPostsTableUpdateCompanionBuilder,
      (
        CachedPost,
        BaseReferences<_$AppDatabase, $CachedPostsTable, CachedPost>,
      ),
      CachedPost,
      PrefetchHooks Function()
    >;
typedef $$UserProfilesTableCreateCompanionBuilder =
    UserProfilesCompanion Function({
      required String id,
      required String nickname,
      Value<String?> avatarUrl,
      Value<String?> bio,
      Value<String?> email,
      Value<String?> passwordHash,
      Value<bool> isActive,
      Value<int> createdAt,
      Value<int> rowid,
    });
typedef $$UserProfilesTableUpdateCompanionBuilder =
    UserProfilesCompanion Function({
      Value<String> id,
      Value<String> nickname,
      Value<String?> avatarUrl,
      Value<String?> bio,
      Value<String?> email,
      Value<String?> passwordHash,
      Value<bool> isActive,
      Value<int> createdAt,
      Value<int> rowid,
    });

class $$UserProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nickname => $composableBuilder(
    column: $table.nickname,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nickname =>
      $composableBuilder(column: $table.nickname, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<String> get bio =>
      $composableBuilder(column: $table.bio, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get passwordHash => $composableBuilder(
    column: $table.passwordHash,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$UserProfilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProfilesTable,
          UserProfile,
          $$UserProfilesTableFilterComposer,
          $$UserProfilesTableOrderingComposer,
          $$UserProfilesTableAnnotationComposer,
          $$UserProfilesTableCreateCompanionBuilder,
          $$UserProfilesTableUpdateCompanionBuilder,
          (
            UserProfile,
            BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile>,
          ),
          UserProfile,
          PrefetchHooks Function()
        > {
  $$UserProfilesTableTableManager(_$AppDatabase db, $UserProfilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> nickname = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> bio = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> passwordHash = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion(
                id: id,
                nickname: nickname,
                avatarUrl: avatarUrl,
                bio: bio,
                email: email,
                passwordHash: passwordHash,
                isActive: isActive,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String nickname,
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> bio = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> passwordHash = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion.insert(
                id: id,
                nickname: nickname,
                avatarUrl: avatarUrl,
                bio: bio,
                email: email,
                passwordHash: passwordHash,
                isActive: isActive,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserProfilesTable, UserProfile>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $UserProfilesTable,
                    UserProfile
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProfilesTable,
      UserProfile,
      $$UserProfilesTableFilterComposer,
      $$UserProfilesTableOrderingComposer,
      $$UserProfilesTableAnnotationComposer,
      $$UserProfilesTableCreateCompanionBuilder,
      $$UserProfilesTableUpdateCompanionBuilder,
      (
        UserProfile,
        BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile>,
      ),
      UserProfile,
      PrefetchHooks Function()
    >;
typedef $$PostCommentsTableCreateCompanionBuilder =
    PostCommentsCompanion Function({
      required String id,
      required String postId,
      required String authorName,
      required String body,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$PostCommentsTableUpdateCompanionBuilder =
    PostCommentsCompanion Function({
      Value<String> id,
      Value<String> postId,
      Value<String> authorName,
      Value<String> body,
      Value<int> createdAt,
      Value<int> rowid,
    });

class $$PostCommentsTableFilterComposer
    extends Composer<_$AppDatabase, $PostCommentsTable> {
  $$PostCommentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get postId => $composableBuilder(
    column: $table.postId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PostCommentsTableOrderingComposer
    extends Composer<_$AppDatabase, $PostCommentsTable> {
  $$PostCommentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get postId => $composableBuilder(
    column: $table.postId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PostCommentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PostCommentsTable> {
  $$PostCommentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get postId =>
      $composableBuilder(column: $table.postId, builder: (column) => column);

  GeneratedColumn<String> get authorName => $composableBuilder(
    column: $table.authorName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$PostCommentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PostCommentsTable,
          PostComment,
          $$PostCommentsTableFilterComposer,
          $$PostCommentsTableOrderingComposer,
          $$PostCommentsTableAnnotationComposer,
          $$PostCommentsTableCreateCompanionBuilder,
          $$PostCommentsTableUpdateCompanionBuilder,
          (
            PostComment,
            BaseReferences<_$AppDatabase, $PostCommentsTable, PostComment>,
          ),
          PostComment,
          PrefetchHooks Function()
        > {
  $$PostCommentsTableTableManager(_$AppDatabase db, $PostCommentsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PostCommentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PostCommentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PostCommentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> postId = const Value.absent(),
                Value<String> authorName = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PostCommentsCompanion(
                id: id,
                postId: postId,
                authorName: authorName,
                body: body,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String postId,
                required String authorName,
                required String body,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => PostCommentsCompanion.insert(
                id: id,
                postId: postId,
                authorName: authorName,
                body: body,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PostCommentsTable, PostComment>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $PostCommentsTable,
                    PostComment
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PostCommentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PostCommentsTable,
      PostComment,
      $$PostCommentsTableFilterComposer,
      $$PostCommentsTableOrderingComposer,
      $$PostCommentsTableAnnotationComposer,
      $$PostCommentsTableCreateCompanionBuilder,
      $$PostCommentsTableUpdateCompanionBuilder,
      (
        PostComment,
        BaseReferences<_$AppDatabase, $PostCommentsTable, PostComment>,
      ),
      PostComment,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CachedPostsTableTableManager get cachedPosts =>
      $$CachedPostsTableTableManager(_db, _db.cachedPosts);
  $$UserProfilesTableTableManager get userProfiles =>
      $$UserProfilesTableTableManager(_db, _db.userProfiles);
  $$PostCommentsTableTableManager get postComments =>
      $$PostCommentsTableTableManager(_db, _db.postComments);
}
