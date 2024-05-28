import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './harga_controller.dart';

class HargaPage extends GetView<HargaController> {
    
    const HargaPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('HargaPage'),),
            body: Container(),
        );
    }
}