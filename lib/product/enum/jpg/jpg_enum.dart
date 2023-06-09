enum ScreenEnum {
  about("about"),
  games("games"),
  home("home"),
  ;

  final String value;

  const ScreenEnum(this.value);

  String get rawValue => "assets/jpg/$value.png";
}
