// import 'package:boonda_gti/infrastructure/order/model/response/order_detail_response.dart';
// import 'package:flutter/material.dart';

// import '../../../common/common.dart';
// import '../../../infrastructure/infrastructure.dart';
// import 'widget.dart';

// class GuardianSection extends StatelessWidget {
//   const GuardianSection({
//     Key? key,
//     required this.item,
//   }) : super(key: key);

//   final OrderDetailResponse item;

//   @override
//   Widget build(BuildContext context) {
//     return SectionDetails(label: "Relative Details", childs: [
//       ...item.parent?.guardians
//               ?.map((e) => Column(
//                     children: [
//                       const SizedBox(height: 9.5),
//                       SimpleRow(
//                           left: const CustomText("Name"),
//                           right: CustomText(e.name ?? "-")),
//                       const SizedBox(height: 11),
//                       const SimpleRow(
//                           left: CustomText("Phone"),
//                           right: CustomText( "-")),
//                       const SizedBox(height: 11),
//                     ],
//                   ))
//               .toList() ??
//           [],
//     ]);
//   }
// }
