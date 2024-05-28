import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './pengajar_controller.dart';

class PengajarPage extends GetView<PengajarController> {
    
    const PengajarPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('PengajarPage'),),
            body: Container(),
        );
    }
}