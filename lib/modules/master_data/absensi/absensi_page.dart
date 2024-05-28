import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './absensi_controller.dart';

class AbsensiPage extends GetView<AbsensiController> {
    
    const AbsensiPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('AbsensiPage'),),
            body: Container(),
        );
    }
}