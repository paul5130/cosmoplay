import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;

import 'app_routes.dart';
import 'initial_binding.dart';

class App extends StatelessWidget {
  const App({
    required this.initialBinding,
    super.key,
  });
  final InitialBinding initialBinding;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: initialBinding.flavorConfig.title,
      initialBinding: initialBinding,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.videoListScene,
      getPages: AppRoutes.pages,
    );
  }
}
