enum FlareEnum {
  background,
}

enum FlareKeys {
  midnight,
}

extension GetPath on FlareEnum {
  String get rawValue {
    switch (this) {
      case FlareEnum.background:
        return "assets/animation/$name.flr";
    }
  }
}
