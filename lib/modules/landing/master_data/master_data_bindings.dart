import 'package:get/get.dart';
import './master_data_controller.dart';

class MasterDataBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MasterDataController());
    }
}