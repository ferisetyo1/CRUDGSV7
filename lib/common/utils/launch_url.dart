import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<bool> launchUrl(String url) async {
  try {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url,
          webViewConfiguration: const WebViewConfiguration(
              enableJavaScript: false, enableDomStorage: false),
          mode: LaunchMode.externalApplication);
      debugPrint('can launch url: $url');
      return true;
    } else {
      debugPrint('can\'t launch url');
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return false;
}
