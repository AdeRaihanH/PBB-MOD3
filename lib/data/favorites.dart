import 'package:flutter/foundation.dart';
import '../models/country.dart';

class FavoritesStore extends ChangeNotifier {
  FavoritesStore._();

  static final FavoritesStore instance = FavoritesStore._();

  final List<Country> _favorites = [];

  List<Country> get favorites => List.unmodifiable(_favorites);

  bool isFavorite(Country country) =>
      _favorites.any((c) => c.name == country.name);

  void toggle(Country country) {
    final index = _favorites.indexWhere((c) => c.name == country.name);
    if (index >= 0) {
      _favorites.removeAt(index);
    } else {
      _favorites.add(country);
    }
    notifyListeners();
  }
}
