import 'package:url_launcher/url_launcher.dart';


class OpenLaunchUrl {
   final Uri _url = Uri.parse('https://flutter.dev');

    Future<void> open() async {
     if (!await launchUrl(_url)) {
       throw Exception('Could not launch $_url');
     }
   }

 }