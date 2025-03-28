import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_theme.dart';

import 'presentation/styles/custom_colors.dart';
import 'presentation/styles/custom_style.dart';
import 'presentation/views/dashboard/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      builder: (context, child) {
        return MaterialApp(
          title: 'MoniePoint Estate',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.light,
          home: const HomeScreen(),
        );
      },
    );
  }
}
