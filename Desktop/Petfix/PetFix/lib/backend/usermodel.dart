class User {
  int? id; // id artık nullable olmalı
  final String username;
  final String email;

  User({this.id, required this.username, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      email: map['email'],
    );
  }

  User copyWith({int? id, String? username, String? email}) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }
}
