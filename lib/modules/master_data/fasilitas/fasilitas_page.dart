import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './fasilitas_controller.dart';

class FasilitasPage extends GetView<FasilitasController> {
    
    const FasilitasPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('FasilitasPage'),),
            body: Container(),
        );
    }
}