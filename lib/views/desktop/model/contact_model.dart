import 'package:dorilla_games/product/locale/project_keys.dart';

class ContactModel {
  String? name;
  String? email;
  String? about;
  bool? web;
  bool? app;
  bool? game;

  ContactModel({this.name, this.email, this.about, this.web, this.app, this.game});

  ContactModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    about = json['about'];
    web = json['web'];
    app = json['app'];
    game = json['game'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['about'] = about;
    data['web'] = web;
    data['app'] = app;
    data['game'] = game;
    return data;
  }

  String extractSubject(ContactModel contactModel) {
    final List subjects = [];
    if (contactModel.web ?? false) {
      subjects.add(ProjectKeys.web);
    }
    if (contactModel.app ?? false) {
      subjects.add(ProjectKeys.app);
    }
    if (contactModel.game ?? false) {
      subjects.add(ProjectKeys.game);
    }
    final mySubjects = subjects.join(", ");
    return mySubjects;
  }
}
