import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FakeWebViewPlatform {
  final Uri _url = Uri.parse('https://flutter.dev');

  Future<void> testelaunchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
