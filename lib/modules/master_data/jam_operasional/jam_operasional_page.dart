import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './jam_operasional_controller.dart';

class JamOperasionalPage extends GetView<JamOperasionalController> {
    
    const JamOperasionalPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('JamOperasionalPage'),),
            body: Container(),
        );
    }
}