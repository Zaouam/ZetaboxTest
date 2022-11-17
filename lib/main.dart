import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klarna/app/main/screens/home_screen/home_screen.dart';
//import 'package:klarna/app/main/screens/main_screen.dart';
import 'config/colors/colors.dart';

void main() async {
  configureGlobalLoader();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          builder: EasyLoading.init(),
        );
      },
      child: const MainApp(),
    );
  }
}
  void configureGlobalLoader() {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..userInteractions = false
      ..animationStyle = EasyLoadingAnimationStyle.opacity
      ..indicatorColor = Colors.transparent
      ..backgroundColor = Colors.transparent
      ..maskType = EasyLoadingMaskType.black
      ..indicatorColor = Colors.black
      ..textColor = Colors.black
      ..maskColor = Colors.white
      ..contentPadding = EdgeInsets.zero
      ..boxShadow = <BoxShadow>[]
      ..indicatorSize = 0.0
      ..fontSize = 0.0
      ..lineWidth = 0.0
      ..textPadding = EdgeInsets.zero
      ..radius = 0.0
      ..indicatorWidget = const CircularProgressIndicator(color: AppColors.primaryColor,)
      ..progressWidth = 0.0;
  }
