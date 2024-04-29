import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:get/get.dart';
import './list_children_controller.dart';

class ListChildrenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(ListChildrenController());
  }
}
