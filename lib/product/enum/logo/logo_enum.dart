enum LogoEnum {
  logo,
}

extension LogoPath on LogoEnum {
  String get rawValue {
    switch (this) {
      case LogoEnum.logo:
        return "assets/logo/$name.png";
    }
  }
}
