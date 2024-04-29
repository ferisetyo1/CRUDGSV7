import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './master_data_controller.dart';

class MasterDataPage extends GetView<MasterDataController> {
    
    const MasterDataPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('MasterDataPage'),),
            body: Container(),
        );
    }
}