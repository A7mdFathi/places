import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:places/helpers/db_helper.dart';
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
    DBHelper.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBHelper.getData('user_places');
    dataList
        .map(
          (item) => Place(
            id: item['id'],
            title: item['title'],
            image: File(
              item['image'],
            ),
            location: null,
          ),
        )
        .toList();
    notifyListeners();
  }
}
