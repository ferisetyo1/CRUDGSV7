import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:get/get.dart';
import './detail_pertumbuhan_controller.dart';

class DetailPertumbuhanBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(DetailPertumbuhanController());
  }
}
