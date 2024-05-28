import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './galeri_controller.dart';

class GaleriPage extends GetView<GaleriController> {
    
    const GaleriPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('GaleriPage'),),
            body: Container(),
        );
    }
}