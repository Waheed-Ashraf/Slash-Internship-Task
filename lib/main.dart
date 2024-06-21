import 'package:flutter/material.dart';
import 'package:slash_test/core/services/service_locator.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/home/presentation/views/home_view.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorPallet.mainBlack),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
