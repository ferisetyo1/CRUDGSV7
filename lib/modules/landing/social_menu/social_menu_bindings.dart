import 'package:get/get.dart';
import './social_menu_controller.dart';

class SocialMenuBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SocialMenuController());
    }
}