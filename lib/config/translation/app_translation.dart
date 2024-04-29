import 'package:boonda_mitra/config/translation/en_translation.dart';
import 'package:boonda_mitra/config/translation/id_translation.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ...idTranslation,
        ...enTranslation,
      };
}
