import 'dart:convert';

import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = '';

class LocationHelper {
  static String generatingLocationPreviewImage({
    double latitude,
    double longitude,
  }) {
    return '';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = '';
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
