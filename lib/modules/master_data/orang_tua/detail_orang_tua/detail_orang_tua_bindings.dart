import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:get/get.dart';
import './detail_orang_tua_controller.dart';

class DetailOrangTuaBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrangTuaServices());
    Get.put(DetailOrangTuaController());
  }
}
