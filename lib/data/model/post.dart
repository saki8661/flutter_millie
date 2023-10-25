import 'package:flutter_blog/data/model/book.dart';
import 'package:flutter_blog/data/model/user.dart';
import 'package:intl/intl.dart';

class Post {
  final int? id;
  final String? title;
  final String? content;
  final DateTime? createdAt;
  final User? user;
  final Book? book;

  Post({
    this.id,
    this.title,
    this.content,
    this.createdAt,
    this.user,
    this.book,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "created": createdAt,
        "user": user,
        "book": book
      };

  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        createdAt = DateFormat("yyyy-mm-dd").parse(json["created"]),
        user = User.fromJson(json["user"]),
        book = Book.fromJson(json["book"]);
}
