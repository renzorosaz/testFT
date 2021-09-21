import 'parents/model.dart';

class CustomPage extends Model {
  //creating model to views Widgets
  String? id;
  String? title;
  String? content;
  CustomPage({this.id, this.title, this.content});

  factory CustomPage.fromJson(Map<String, dynamic> json) => CustomPage(
        content: json['content'],
        title: json['title'],
        id: json['id'],
      );
  Map<String, dynamic> toJson() => {
        'content': content,
        'title': title,
        'id': id,
      };
}
