import 'package:boonda_mitra/common/widget/simple_row.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'section_details.dart';

class ChildrenSection extends StatelessWidget {
  const ChildrenSection({
    super.key,
    required this.item,
  });

  final OrderResponse item;

  @override
  Widget build(BuildContext context) {
    return SectionDetails(label: "Child Details", childs: [
      ...item.childrenItemDetails
              ?.map((e) => Column(
                    children: [
                      const SizedBox(height: 9.5),
                      SimpleRow(
                        left: const Text("Name"),
                        right: Text(e.name?.capitalize ?? ""),
                      ),
                      const SizedBox(height: 11),
                      SimpleRow(
                        left: const Text("Age"),
                        right: Text("${e.age} years"),
                      ),
                      const SizedBox(height: 11),
                      SimpleRow(
                        left: const Text("Address"),
                        right: Text((e.address as String?) ?? "-"),
                      ),
                      const SizedBox(height: 11),
                    ],
                  ))
              .toList() ??
          [],
    ]);
  }
}
