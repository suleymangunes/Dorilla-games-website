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
}
