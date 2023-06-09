enum JpgEnum {
  about("about"),
  games("game"),
  home("home"),
  ;

  final String value;

  const JpgEnum(this.value);

  String get rawValue => "assets/jpg/$value.jpg";
}
