enum FontEnum {
  felixTi,
  bodoni,
}

extension FontName on FontEnum {
  String get rawValue {
    switch (this) {
      case FontEnum.felixTi:
        return bigFirstLetter(name);
      case FontEnum.bodoni:
        return bigFirstLetter(name);
    }
  }

  String bigFirstLetter(data) => data.replaceFirst(data[0], data[0].toUpperCase());
}
