import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './aktivitas_controller.dart';

class AktivitasPage extends GetView<AktivitasController> {
    
    const AktivitasPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('AktivitasPage'),),
            body: Container(),
        );
    }
}