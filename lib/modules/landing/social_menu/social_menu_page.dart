import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './social_menu_controller.dart';

class SocialMenuPage extends GetView<SocialMenuController> {
    
    const SocialMenuPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('SocialMenuPage'),),
            body: Container(),
        );
    }
}