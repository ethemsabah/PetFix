import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  static final tableLikes = 'likes';
  static final columnId = '_id';
  static final columnPostId = 'post_id';
  static final columnUserId = 'user_id';

  DatabaseHelper._privateConstructor();

  factory DatabaseHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'profile.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Users table
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL,
        password TEXT NOT NULL,
        bio TEXT,
        profile_image TEXT
      )
    ''');

    // Posts table
    await db.execute('''
      CREATE TABLE posts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        title TEXT NOT NULL,
        body TEXT,
        image_path TEXT NOT NULL,
        date TEXT,
        FOREIGN KEY (user_id) REFERENCES users(id)
      )
    ''');
    await db.execute('''
    CREATE TABLE likes (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      user_id INTEGER NOT NULL,
      post_id INTEGER NOT NULL,
      FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
      FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
    )
  ''');

    // Comments table
    await db.execute('''
      CREATE TABLE comments (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        post_id INTEGER NOT NULL,
        comment TEXT NOT NULL,
        date TEXT,
        FOREIGN KEY (user_id) REFERENCES users(id),
        FOREIGN KEY (post_id) REFERENCES posts(id)
      )
    ''');

    // Photos table
    await db.execute('''
      CREATE TABLE photos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        image_path TEXT NOT NULL,
        caption TEXT,
        date TEXT,
        FOREIGN KEY (user_id) REFERENCES users(id)
      )
    ''');

    // Likes table
   

    // Matches table
    await db.execute('''
      CREATE TABLE matches (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER NOT NULL,
        animal_type TEXT NOT NULL,
        breed TEXT NOT NULL,
        age INTEGER NOT NULL,
        gender TEXT NOT NULL,
        description TEXT,
        image_path TEXT,
        FOREIGN KEY (user_id) REFERENCES users(id)
      )
    ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await db.execute('''
        ALTER TABLE comments ADD COLUMN post_id INTEGER NOT NULL DEFAULT 0
      ''');
    }
  }

  // User operations

  Future<int> insertUser(String name, String email, String password) async {
    Database db = await database;
    return await db
        .insert('users', {'name': name, 'email': email, 'password': password});
  }

  Future<Map<String, dynamic>?> getUser(int userId) async {
    Database db = await database;
    List<Map<String, dynamic>> result =
        await db.query('users', where: 'id = ?', whereArgs: [userId]);
    return result.isNotEmpty ? result.first : null;
  }

  Future<void> updateUserProfile(
      int userId, String name, String bio, String profileImagePath) async {
    Database db = await database;
    await db.update(
      'users',
      {'name': name, 'bio': bio, 'profile_image': profileImagePath},
      where: 'id = ?',
      whereArgs: [userId],
    );
  }

  Future<void> updateUserBio(int userId, String newBio) async {
    Database db = await database;
    await db.update('users', {'bio': newBio},
        where: 'id = ?', whereArgs: [userId]);
  }

  Future<void> deleteUser(int userId) async {
    Database db = await database;
    await db.delete('users', where: 'id = ?', whereArgs: [userId]);
  }

  // Photo operations

  Future<int> insertPhoto(Map<String, dynamic> photo) async {
    Database db = await database;
    return await db.insert('photos', photo);
  }

  Future<List<Map<String, dynamic>>> getUserPhotos(int userId) async {
    Database db = await database;
    return await db.query('photos',
        where: 'user_id = ?', whereArgs: [userId], orderBy: 'id DESC');
  }

  // Post operations

  Future<int> insertPost(
      int userId, String title, String body, String imagePath) async {
    Database db = await database;
    return await db.insert('posts', {
      'user_id': userId,
      'title': title,
      'body': body,
      'image_path': imagePath,
      'date': DateTime.now().toString(),
    });
  }

  Future<List<Map<String, dynamic>>> getAllPosts() async {
    Database db = await database;
    return await db.query('posts', orderBy: 'id DESC');
  }

  Future<void> updatePost(int postId, int userId, String title, String body,
      String imagePath) async {
    Database db = await database;
    await db.update(
      'posts',
      {
        'user_id': userId,
        'title': title,
        'body': body,
        'image_path': imagePath,
      },
      where: 'id = ?',
      whereArgs: [postId],
    );
  }

  Future<void> deletePost(int postId) async {
    Database db = await database;
    await db.delete('posts', where: 'id = ?', whereArgs: [postId]);
  }

  // Comment operations

  Future<int> insertComment(Map<String, dynamic> comment) async {
    Database db = await database;
    return await db.insert('comments', comment);
  }

  Future<List<Map<String, dynamic>>> getComments(int postId) async {
    Database db = await database;
    return await db
        .query('comments', where: 'post_id = ?', whereArgs: [postId]);
  }

  Future<void> deleteComment(int commentId) async {
    Database db = await database;
    await db.delete('comments', where: 'id = ?', whereArgs: [commentId]);
  }

  // Like operations
Future<int> insertLike(int userId, int postId) async {
  Database db = await database;
  return await db.insert('likes', {'user_id': userId, 'post_id': postId});
}


  Future<void> deleteLike(int userId, String photoId) async {
    Database db = await database;
    await db.delete('likes',
        where: 'user_id = ? AND photo_id = ?', whereArgs: [userId, photoId]);
  }

  Future<int> getLikesCount(String photoId) async {
    Database db = await database;
    List<Map<String, dynamic>> result =
        await db.query('likes', where: 'photo_id = ?', whereArgs: [photoId]);
    return result.length;
  }

Future<bool> isPhotoLikedByUser(int userId, int postId) async {
  Database db = await database;
  List<Map<String, dynamic>> result = await db.query('likes',
      where: 'user_id = ? AND post_id = ?', whereArgs: [userId, postId]);
  return result.isNotEmpty;
}


  Future<bool> issPhotoLikedByUser(String userId, int photoId) async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query('likes',
        where: 'user_id = ? AND photo_id = ?', whereArgs: [userId, photoId]);
    return result.isNotEmpty;
  }

  // Match operations

  Future<int> insertMatch(int userId, String animalType, String breed, int age,
      String gender, String description) async {
    Database db = await database;
    return await db.insert('matches', {
      'user_id': userId,
      'animal_type': animalType,
      'breed': breed,
      'age': age,
      'gender': gender,
      'description': description,
    });
  }

  Future<void> updateMatch(int matchId, String animalType, String breed,
      int age, String gender, String description) async {
    Database db = await database;
    await db.update(
      'matches',
      {
        'animal_type': animalType,
        'breed': breed,
        'age': age,
        'gender': gender,
        'description': description,
      },
      where: 'id = ?',
      whereArgs: [matchId],
    );
  }

  Future<void> updateMatchWithImage(int matchId, String imagePath) async {
    Database db = await database;
    await db.update('matches', {'image_path': imagePath},
        where: 'id = ?', whereArgs: [matchId]);
  }

  Future<void> deleteMatch(int matchId) async {
    Database db = await database;
    await db.delete('matches', where: 'id = ?', whereArgs: [matchId]);
  }

  Future<List<Map<String, dynamic>>> getUserMatches(int userId) async {
    Database db = await database;
    return await db.query('matches',
        where: 'user_id = ?', whereArgs: [userId], orderBy: 'id DESC');
  }

  Future<List<Map<String, dynamic>>> getMatches() async {
    Database db = await database;
    return await db.query('matches', orderBy: 'id DESC');
  }

// Other utility operations

  Future<Map<String, dynamic>?> getCurrentUser() async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query('users', limit: 1);
    return result.isNotEmpty ? result.first : null;
  }

  Future<bool> login(String email, String password) async {
    Database db = await database;
    List<Map<String, dynamic>> result = await db.query('users',
        where: 'email = ? AND password = ?', whereArgs: [email, password]);
    return result.isNotEmpty;
  }

  Future<Map<String, dynamic>?> getUserByEmail(String email) async {
    Database db = await database;
    List<Map<String, dynamic>> result =
        await db.query('users', where: 'email = ?', whereArgs: [email]);
    return result.isNotEmpty ? result.first : null;
  }

  Future<void> updatePassword(int userId, String newPassword) async {
    Database db = await database;
    await db.update('users', {'password': newPassword},
        where: 'id = ?', whereArgs: [userId]);
  }

// Additional comment operations

  Future<int> inserrtComment(int userId, int postId, String comment) async {
    Database db = await database;
    return await db.insert('comments', {
      'user_id': userId,
      'post_id': postId,
      'comment': comment,
      'date': DateTime.now().toString(),
    });
  }

  Future<List<Map<String, dynamic>>> getCommentts(int postId) async {
    Database db = await database;
    return await db
        .query('comments', where: 'post_id = ?', whereArgs: [postId]);
  }

  Future<void> deleteeComment(int commentId) async {
    Database db = await database;
    await db.delete('comments', where: 'id = ?', whereArgs: [commentId]);
  }

  Future<void> updateComment(int commentId, String updatedComment) async {
    Database db = await database;
    await db.update(
      'comments',
      {'comment': updatedComment},
      where: 'id = ?',
      whereArgs: [commentId],
    );
  }

  Future<void> likePost(int postId, int userId) async {
    final db = await database;
    await db.insert('likes', {'post_id': postId, 'user_id': userId});
  }

  Future<void> unlikePost(int postId, int userId) async {
    final db = await database;
    await db.delete('likes',
        where: 'post_id = ? AND user_id = ?', whereArgs: [postId, userId]);
  }

  Future<int> gettLikesCount(int postId) async {
    final db = await database;
    var result = await db
        .rawQuery('SELECT COUNT(*) FROM likes WHERE post_id = ?', [postId]);
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<bool> isPostLikedByUser(int postId, int userId) async {
    final db = await database;
    var result = await db.rawQuery(
        'SELECT COUNT(*) as count FROM likes WHERE post_id = ? AND user_id = ?',
        [postId, userId]);
    int count = result.first['count'] as int;
    return count > 0;
  }

  Future<void> toggleLikePost(int postId, int userId) async {
    final db = await database;
    bool isLiked = await isPostLikedByUser(postId, userId);
    if (isLiked) {
      await db.delete('likes',
          where: 'post_id = ? AND user_id = ?', whereArgs: [postId, userId]);
    } else {
      await db.insert('likes', {'post_id': postId, 'user_id': userId});
    }
  }

  Future<void> followUser(int loggedInUserId, int targetUserId) async {
  Database db = await database;
  await db.insert('follows', {
    'user_id': loggedInUserId,
    'target_user_id': targetUserId,
  });
}

Future<void> unfollowUser(int loggedInUserId, int targetUserId) async {
  Database db = await database;
  await db.delete('follows',
      where: 'user_id = ? AND target_user_id = ?', whereArgs: [loggedInUserId, targetUserId]);
}

Future<bool> isFollowing(int loggedInUserId, int targetUserId) async {
  Database db = await database;
  List<Map<String, dynamic>> result = await db.query('follows',
      where: 'user_id = ? AND target_user_id = ?', whereArgs: [loggedInUserId, targetUserId]);
  return result.isNotEmpty;
}

}
