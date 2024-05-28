import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:get/get.dart';
import 'orang_tua_controller.dart';

class OrangTuaBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrangTuaServices());
    Get.put(OrangTuaController());
  }
}
