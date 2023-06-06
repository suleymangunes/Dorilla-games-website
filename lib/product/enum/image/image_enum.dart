enum ImageEnum {
  logo,
  store,
  phone,
}

extension LogoPath on ImageEnum {
  String get rawValue {
    switch (this) {
      case ImageEnum.logo:
        return "assets/logo/$name.png";
      case ImageEnum.store:
        return "assets/images/$name.png";
      case ImageEnum.phone:
        return "assets/images/$name.png";
    }
  }
}
