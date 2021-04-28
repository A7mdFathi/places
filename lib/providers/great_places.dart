import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:places/models/place.dart';

class GreatPLaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: image,
      location: null,
      title: title,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
