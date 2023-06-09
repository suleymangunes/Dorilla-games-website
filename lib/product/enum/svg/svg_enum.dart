enum SvgEnum {
  app("app"),
  game("game"),
  github("github"),
  gmail("gmail"),
  linkedin("linkedin"),
  play("play"),
  web("web"),
  youtube("youtube"),
  ;

  final String value;

  const SvgEnum(this.value);

  String get getSvg => "assets/svg/$value.svg";
}
