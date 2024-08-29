enum CardType {
  treasureBox,
  singleGem,
  doubleGem,
  bomb,
}

extension CardTypeKebabCase on CardType {
  String get kebabCase {
    switch (this) {
      case CardType.singleGem:
        return 'single-gem';
      case CardType.doubleGem:
        return 'double-gem';
      case CardType.treasureBox:
        return 'treasure-box';
      case CardType.bomb:
        return 'bomb';
    }
  }
}

extension CardTypePoint on CardType {
  int get point {
    switch (this) {
      case CardType.singleGem:
        return 1;
      case CardType.doubleGem:
        return 2;
      case CardType.treasureBox:
        return 0;
      case CardType.bomb:
        return 0;
    }
  }
}
