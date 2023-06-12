
import 'package:arabic_english_app/screens/spladh_screen.dart';
import 'package:arabic_english_app/them.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

bool _switchValue = true;
 main() async {
  await GetStorage.init();
  // if your flutter > 1.7.8 :  ensure flutter activated
  WidgetsFlutterBinding.ensureInitialized();
  
  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/lang/',
  );

  runApp(
    LocalizedApp(
      child:const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeService().lightThem,
      darkTheme: ThemeService().darkThem,
      themeMode: ThemeMode.system,
      //ThemeService().getThemMode(),
      
      home:  const SplashScreen(),
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.locale, // Active locale
      supportedLocales: translator.locals(), // Locals list
    );
  }
}



