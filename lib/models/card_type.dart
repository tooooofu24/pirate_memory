enum CardType {
  treasureBox,
  singleGem,
  doubleGem,
  bomb,
}

extension CardTypeKebabCase on CardType {
  String get kebabCase {
    switch (this) {
      case CardType.treasureBox:
        return 'treasure-box';
      case CardType.singleGem:
        return 'single-gem';
      case CardType.doubleGem:
        return 'double-gem';
      case CardType.bomb:
        return 'bomb';
    }
  }
}
