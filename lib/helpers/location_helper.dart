import '../keys/google_api_key.dart' as api_key;

final GOOGLE_API_KEY = api_key.GOOGLE_API_KEY;

class LocationHelper {
  static String generateLocationPreviewImage(
      {required double? latitude, required double? longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
