import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './live_momment_controller.dart';

class LiveMommentPage extends GetView<LiveMommentController> {
    
    const LiveMommentPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('LiveMommentPage'),),
            body: Container(),
        );
    }
}