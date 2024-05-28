import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './kuota_controller.dart';

class KuotaPage extends GetView<KuotaController> {
    
    const KuotaPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('KuotaPage'),),
            body: Container(),
        );
    }
}