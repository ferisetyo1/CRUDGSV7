import 'package:url_launcher/url_launcher.dart';

class CommonUtils {
  static Future<bool> canLaunchLink(String url) async {
    return canLaunchUrl(Uri.parse(url));
  }

  static Future<void> launchLink(String url) async {
    await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication,
        webViewConfiguration: const WebViewConfiguration(
            enableDomStorage: false, enableJavaScript: false));
  }
}
