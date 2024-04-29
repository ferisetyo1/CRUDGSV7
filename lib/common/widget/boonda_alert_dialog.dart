import 'package:flutter/material.dart';

import '../style/color_pallete.dart';

class BoondaAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final String btnTextPositive;
  final String btnTextNegative;
  final Function? onTapPositive;
  final Function? onTapNegative;
  final bool showBtnPositive;
  final bool showBtnNegative;

  const BoondaAlertDialog(
      {super.key,
      required this.title,
      this.onTapPositive,
      this.onTapNegative,
      required this.content,
      required this.btnTextPositive,
      this.btnTextNegative = "Cancel",
      this.showBtnPositive = true,
      this.showBtnNegative = true});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      contentPadding: const EdgeInsets.only(left: 24, top: 8, right: 24),
      title: Align(alignment: Alignment.center, child: Text(title)),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          children: [
            if (showBtnNegative)
              Expanded(
                child: MaterialButton(
                  height: 40,
                  textColor: ColorPalletes.abuabuGelap,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: ColorPalletes.abuabuNormal),
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {
                    onTapNegative?.call();
                    Navigator.pop(context);
                  },
                  child: Text(btnTextNegative),
                ),
              ),
            if (showBtnNegative && showBtnPositive) const SizedBox(width: 8),
            if (showBtnPositive)
              Expanded(
                child: MaterialButton(
                  height: 40,
                  color: ColorPalletes.merahNormal,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () async {
                    onTapPositive?.call();
                    Navigator.pop(context, true);
                  },
                  child: Text(btnTextPositive),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
