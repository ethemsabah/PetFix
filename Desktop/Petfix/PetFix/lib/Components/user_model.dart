class UserModel {
  final String profile;
  final String username;
  final String bio;
  final List<String> followers;
  final List<String> following;

  UserModel({
    required this.profile,
    required this.username,
    required this.bio,
    required this.followers,
    required this.following,
  });
}