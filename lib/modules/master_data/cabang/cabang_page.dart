import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './cabang_controller.dart';

class CabangPage extends GetView<CabangController> {
    
    const CabangPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('CabangPage'),),
            body: Container(),
        );
    }
}