import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:flutter/material.dart';

class AbsensiRekap extends StatelessWidget {
  const AbsensiRekap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: ColorPalletes.latar,
      borderColor: ColorPalletes.toscaTerang,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Absensi hari ini",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Expanded(
                child: AbsensiCount(
                  label: "Absensi Masuk",
                  counter: 34,
                ),
              ),
              Expanded(
                child: AbsensiCount(
                  label: "Telat",
                  counter: 4,
                ),
              ),
              Expanded(
                child: AbsensiCount(
                  label: "Tidak Masuk",
                  counter: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          CustomCard(
            borderRadius: BorderRadius.circular(4),
            padding: const EdgeInsets.all(8),
            borderColor: ColorPalletes.toscaTerang,
            margin: EdgeInsets.zero,
            useDefaultShadow: false,
            onTap: () {},
            child: const Row(
              children: [
                Expanded(
                    child: Text(
                  "Lihat rekap absensi",
                  style:
                      TextStyle(color: ColorPalletes.toscaNormal, fontSize: 10),
                )),
                Icon(
                  Icons.chevron_right,
                  color: ColorPalletes.toscaNormal,
                  size: 16,
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Total Murid dan Pengajar",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
          ),
          const Row(
            children: [
              Expanded(
                child: AbsensiCount(
                  label: "Murid",
                  counter: 34,
                ),
              ),
              Expanded(
                flex: 2,
                child: AbsensiCount(
                  label: "Pengajar",
                  counter: 4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class AbsensiCount extends StatelessWidget {
  final String label;
  final int counter;
  const AbsensiCount({
    super.key,
    required this.label,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:
              const TextStyle(color: ColorPalletes.abuabuGelap, fontSize: 12),
        ),
        Text("$counter Anak", style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
