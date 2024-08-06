enum PlayerColor {
  blue,
  yellow,
  green,
  red,
}

extension PlayerColorLabel on PlayerColor {
  String get label {
    switch (this) {
      case PlayerColor.blue:
        return '青';
      case PlayerColor.yellow:
        return '黄';
      case PlayerColor.green:
        return '緑';
      case PlayerColor.red:
        return '赤';
    }
  }
}

extension PlayerColorPirateImage on PlayerColor {
  String get pirateImage {
    switch (this) {
      case PlayerColor.blue:
        return 'assets/pirate-blue.png';
      case PlayerColor.yellow:
        return 'assets/pirate-yellow.png';
      case PlayerColor.green:
        return 'assets/pirate-green.png';
      case PlayerColor.red:
        return 'assets/pirate-red.png';
    }
  }
}
