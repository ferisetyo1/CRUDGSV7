import 'package:boonda_mitra/modules/master_data/anak/services/children_services.dart';
import 'package:get/get.dart';
import 'pilih_children_controller.dart';

class PilihChildrenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(PilihChildrenController());
  }
}
