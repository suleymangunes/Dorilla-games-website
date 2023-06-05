enum FontEnum {
  felixTi,
}

extension FontName on FontEnum {
  String get rawValue {
    switch (this) {
      case FontEnum.felixTi:
        return bigFirstLetter(name);
    }
  }

  String bigFirstLetter(data) => data.replaceFirst(data[0], data[0].toUpperCase());
}
