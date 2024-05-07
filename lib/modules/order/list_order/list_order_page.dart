import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './list_order_controller.dart';

class ListOrderPage extends GetView<ListOrderController> {
    
    const ListOrderPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ListOrderPage'),),
            body: Container(),
        );
    }
}