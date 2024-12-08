import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';
import 'global_wrapper.dart';

class Pingo extends StatelessWidget {
  const Pingo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lembretes',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
