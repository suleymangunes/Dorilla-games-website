enum UrlEnum {
  website,
  github,
  linkedin,
  youtube,
}

extension GetUrl on UrlEnum {
  String get getUrl {
    switch (this) {
      case UrlEnum.website:
        return "https://github.com/suleymangunes";
      case UrlEnum.github:
        return "https://github.com/suleymangunes";
      case UrlEnum.linkedin:
        return "https://www.linkedin.com/in/suleymangunes0/";
      case UrlEnum.youtube:
        return "https://www.youtube.com/@SuleymanGunesSoftware";
    }
  }
}
