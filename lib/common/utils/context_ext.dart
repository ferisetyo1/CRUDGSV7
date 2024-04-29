import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

extension ContextUtility on BuildContext {
  Future<void> openEmailApp() async {
    try {
      if (Platform.isAndroid) {
        AndroidIntent intent = const AndroidIntent(
            action: 'android.intent.action.MAIN',
            category: 'android.intent.category.APP_EMAIL',
            flags: [Flag.FLAG_ACTIVITY_NEW_TASK]);
        intent.launch().catchError((e) {
          ScaffoldMessenger.of(this)
              .showSnackBar(SnackBar(content: Text(e.toString())));
        });
        debugPrint("if is android");
      } else if (Platform.isIOS) {
        launchUrlString("message://").catchError((e) {
          ScaffoldMessenger.of(this)
              .showSnackBar(SnackBar(content: Text(e.toString())));
          return false;
        });
      } else {
        await launchUrl(Uri.parse("https://mail.google.com/mail/u/0/#inbox"),
                mode: LaunchMode.externalApplication)
            .catchError((e) {
          ScaffoldMessenger.of(this)
              .showSnackBar(SnackBar(content: Text(e.toString())));
          return false;
        });
        debugPrint("if else");
      }
    } catch (e) {
      try {
        debugPrint("catch");
        await launchUrl(Uri.parse("https://mail.google.com/mail/u/0/#inbox"),
                mode: LaunchMode.externalApplication)
            .catchError((e) {
          ScaffoldMessenger.of(this)
              .showSnackBar(SnackBar(content: Text(e.toString())));
          return false;
        });
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }
}
