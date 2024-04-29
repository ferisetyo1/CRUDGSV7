import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:get/get.dart';
import './detail_anak_controller.dart';

class DetailAnakBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(DetailAnakController());
  }
}
