import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './kelas_controller.dart';

class KelasPage extends GetView<KelasController> {
    
    const KelasPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('KelasPage'),),
            body: Container(),
        );
    }
}