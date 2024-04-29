import 'config.dart';

class Constant {
  static String get baseUrl {
    switch (Config.flavor) {
      case Flavor.prod:
        return 'https://api-master.boonda.id/';
      case Flavor.stag:
        return 'https://api-master.staging.boonda.id/';
      default:
        return 'https://api-master.development.boonda.id/';
    }
  }

  static String get baseApiUrl => "${baseUrl}daycare/api/v1/";
  static const clientIdProd = "97df7d7f-29c2-4dd9-9a42-50fa0c4623e8";
}
