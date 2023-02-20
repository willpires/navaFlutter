import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nava_flutter/screens/home/home_page.dart';
import 'package:nava_flutter/screens/webview/web_view.dart';
import 'package:nava_flutter/theme/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  WebViewPlatform.instance = AppWebView();

  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.data,
        home: HomePage()),
  );
}
