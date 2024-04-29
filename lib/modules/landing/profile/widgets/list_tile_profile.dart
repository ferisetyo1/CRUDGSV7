import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileProfile extends StatelessWidget {
  final Function? onTap;
  final String text;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  const ListTileProfile({
    super.key,
    this.onTap,
    required this.text,
    this.leadingIcon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => onTap?.call(),
      child: Ink(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leadingIcon ?? const SizedBox(),
                  leadingIcon != null
                      ? const SizedBox(
                          width: 20,
                        )
                      : const SizedBox(),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              trailingIcon ?? const SizedBox()
            ],
          ),
        ),
      ),
    ).marginSymmetric(horizontal: 20, vertical: 8);
  }
}
