class Fruit {
  static final all = ['apple', 'banana', 'cherries', 'coconut', 'kiwi', 'orange', 'pawpaw', 'pear'];
  static final rated = all.toList().getRange(0, 5).toList();
  static final trending = all.reversed.toList().getRange(0, 5).toList();
  static final details = all.reversed.toList().getRange(0, 3).toList();
  static final favourites = all.toList().getRange(0, 6).toList();
}
