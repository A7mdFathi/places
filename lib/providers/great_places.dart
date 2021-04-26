import 'package:flutter/foundation.dart';
import 'package:places/models/place.dart';

class GreatPLaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
