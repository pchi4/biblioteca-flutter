import 'package:flutter/material.dart';
import 'screens/response_pages.dart';

import './responsive/mobile_screen.dart';
import './responsive/tablet_screen.dart';
import './responsive/desktop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Biblioteca Digital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsePages(
      screenMobile: MobileScreen(),
      screemDesktop: DesktopScreen(),
      screenTablet: TabletScreen(),
    );
  }
}
