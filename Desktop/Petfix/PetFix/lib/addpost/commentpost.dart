class Comment {
  final int id;
  final int userId;
  final int postId;
  final String comment;
  final String date;

  Comment({
    required this.id,
    required this.userId,
    required this.postId,
    required this.comment,
    required this.date,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json['id'],
        userId: json['user_id'],
        postId: json['post_id'],
        comment: json['comment'],
        date: json['date'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'post_id': postId,
        'comment': comment,
        'date': date,
      };
}