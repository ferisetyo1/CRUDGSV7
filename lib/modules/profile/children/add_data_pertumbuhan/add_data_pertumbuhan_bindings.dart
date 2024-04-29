import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:get/get.dart';
import './add_data_pertumbuhan_controller.dart';

class AddDataPertumbuhanBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(AddDataPertumbuhanController());
  }
}
