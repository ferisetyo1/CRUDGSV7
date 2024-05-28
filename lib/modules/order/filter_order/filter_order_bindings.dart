import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:boonda_mitra/modules/master_data/anak/services/children_services.dart';
import 'package:get/get.dart';
import './filter_order_controller.dart';

class FilterOrderBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChildrenServices());
    Get.put(OrangTuaServices());
    Get.put(FilterOrderController());
  }
}
