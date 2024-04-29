// import 'package:boonda_gti/infrastructure/order/model/response/order_detail_response.dart';
// import 'package:boonda_gti/presentation/home/invoice/widget/section_details.dart';
// import 'package:flutter/material.dart';

// import '../../../../common/common.dart';
// import '../../../../common/widget/simple_row.dart';

// class ParentSection extends StatelessWidget {
//   const ParentSection({
//     Key? key,
//     required this.item,
//   }) : super(key: key);

//   final OrderDetailResponse item;

//   @override
//   Widget build(BuildContext context) {
//     return SectionDetails(label: "Invoice Details", childs: [
//       const SizedBox(height: 9.5),
//       SimpleRow(
//           left: CustomText(item.parent?.gender == "1" ? "Father" : "Mother"),
//           right: CustomText(item.parent?.name.toTitleCase() ?? "-")),
//       const SizedBox(height: 11),
//       SimpleRow(
//           left: const CustomText("NIK"),
//           right: CustomText((item.parent?.nik as String?) ?? "-")),
//       const SizedBox(height: 11),
//       SimpleRow(
//           left: const CustomText("Phone"),
//           right: CustomText(item.parent?.phoneNumber ?? "-")),
//     ]);
//   }
// }
