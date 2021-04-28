import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, File image) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: image,
      location: null,
      title: pickedTitle,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
