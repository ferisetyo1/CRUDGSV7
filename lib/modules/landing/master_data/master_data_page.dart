import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/style/image_asset.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/master_data/master_data_pages.dart';
import 'package:boonda_mitra/modules/order/order_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: implementation_imports
import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart';
import './master_data_controller.dart';

class MasterDataPage extends GetView<MasterDataController> {
  const MasterDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SvgPicture.asset(ImageAssetPath.icMasterData),
          const SizedBox(height: 24),
          const Text(
            "Master Data",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ).marginOnly(left: 20),
          const SizedBox(
            height: 24,
          ),
          StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            children: [...MasterDataMenu.values.map((e) => e.render)],
          ),
          const SizedBox(height: 24)
        ],
      ),
    );
  }
}

enum MasterDataMenu {
  orangTua(
      name: "Orang Tua",
      icon: FontAwesomeIcons.layerGroup,
      path: MasterDataPages.ortu),
  anak(
      name: "Anak",
      icon: FontAwesomeIcons.personRunning,
      path: MasterDataPages.listChildren),
  pengajar(
      name: "Pengajar",
      icon: FontAwesomeIcons.idCard,
      path: MasterDataPages.pengajar),
  transaksi(
      name: "Transaksi",
      icon: FontAwesomeIcons.moneyBillTransfer,
      path: OrderPages.list),
  absensi(
      name: "Absensi",
      icon: FontAwesomeIcons.houseUser,
      path: MasterDataPages.absensi),
  kelas(
      name: "Kelas",
      icon: FontAwesomeIcons.school,
      path: MasterDataPages.kelas),
  cabang(
      name: "Cabang",
      icon: FontAwesomeIcons.store,
      path: MasterDataPages.cabang),
  jamOperasional(
      name: "Jam Operasional",
      icon: FontAwesomeIcons.clock,
      path: MasterDataPages.jamOperasional),
  harga(
      name: "Harga",
      icon: FontAwesomeIcons.cashRegister,
      path: MasterDataPages.harga),
  galeri(
      name: "Galeri",
      icon: FontAwesomeIcons.image,
      path: MasterDataPages.galery),
  liveMomment(
      name: "Live Momment",
      icon: FontAwesomeIcons.video,
      path: MasterDataPages.liveMomment),
  kuota(
      name: "Kuota",
      icon: FontAwesomeIcons.userGroup,
      path: MasterDataPages.kuota),
  promo(name: "Promo", icon: FontAwesomeIcons.tag, path: MasterDataPages.promo),
  aktivitas(
      name: "Aktivitas",
      icon: FontAwesomeIcons.handSpock,
      path: MasterDataPages.aktivitas),
  fasilitas(
      name: "Fasilitas",
      icon: FontAwesomeIcons.buildingFlag,
      path: MasterDataPages.fasilitas);

  const MasterDataMenu(
      {required this.name, required this.icon, required this.path});

  final String name;
  final IconData icon;
  final String path;

  Widget get render => MasterDataIcon(
        name: name,
        icon: icon,
        path: path,
      );
}

class MasterDataIcon extends StatelessWidget {
  final String name;
  final IconData icon;
  final String path;
  const MasterDataIcon({
    super.key,
    required this.name,
    required this.icon,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          color: ColorPalletes.toscaTerang,
          useDefaultShadow: false,
          child: SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: FaIcon(
                icon,
                color: ColorPalletes.toscaNormal,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(name)
      ],
    ).clickable(() {
      Get.toNamed(path);
    });
  }
}
