import 'package:flutter/material.dart';

import 'Pages/Features_Pages.dart';
import 'Pages/Launcher_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secure Ambit',
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName: (_) => const LauncherPage(),
        Features.routeName: (_) => const Features(),
      },
    );
  }
}
