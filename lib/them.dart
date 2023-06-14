import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {

  final lightThem = ThemeData.light().copyWith(
    primaryColor: const Color(0xff46033A),
    cardColor:const Color(0xFFFFBC01),
    appBarTheme:const AppBarTheme(),
    dividerColor:Colors.white,
    canvasColor: Colors.black,
    hintColor:const Color(0xffE3DFEC),
    hoverColor:const Color(0xff5631A0),
    secondaryHeaderColor:const Color(0xff5631A0),
    errorColor:const Color.fromARGB(255, 159, 190, 230),
    focusColor: const Color.fromRGBO(44, 66, 94, 1),
    splashColor: const Color(0xffE3DFEC),
    unselectedWidgetColor: Colors.black,
    primaryColorDark:Colors. white,
    primaryColorLight: const Color(0xff5631A0),
    disabledColor: const Color.fromARGB(255, 209, 204, 204),
    backgroundColor: Color.fromARGB(255, 226, 224, 224),
    dialogBackgroundColor:const Color.fromARGB(255, 38, 38, 39),
    highlightColor: Colors.white,
    bottomAppBarColor:const Color.fromARGB(255, 233, 233, 233),
    indicatorColor:const Color(0xff5631A0),
    shadowColor: Colors.black,
    // ignore: deprecated_member_use
    toggleableActiveColor: Colors.black,
    selectedRowColor: Color(0xff46033A).withOpacity(0.3),
    scaffoldBackgroundColor: Color.fromARGB(255, 245, 237, 237),
    cardTheme:const CardTheme(
      color: Color(0xff5631A0)
    ),



  );
  final darkThem = ThemeData.dark().copyWith(
    primaryColor: const Color.fromARGB(255, 28, 39, 53) ,
    cardColor:const Color(0xFF111827),
    appBarTheme: const AppBarTheme(),
    dividerColor:const Color.fromARGB(255, 22, 33, 46),
    canvasColor:const Color(0xffFFFFFF),
    hintColor:const Color(0xFF151B33),
    hoverColor:const Color.fromARGB(255, 28, 39, 53),
    secondaryHeaderColor: Colors.white,
    errorColor:const Color.fromARGB(255, 55, 90, 133),
    focusColor:Colors.white,
    splashColor:const Color(0xff1F2937),
    unselectedWidgetColor:const Color(0xFFFFBC01),
    primaryColorDark: const Color.fromARGB(255, 13, 17, 27),
    primaryColorLight:const Color(0xFFFFBC01),
    disabledColor: const Color(0xFF151B33) ,
    backgroundColor:const Color.fromARGB(255, 28, 39, 53) ,
    dialogBackgroundColor:const Color.fromARGB(255, 184, 188, 189),
    highlightColor: const Color.fromARGB(255, 28, 39, 53) ,
    bottomAppBarColor:const Color.fromARGB(255, 53, 65, 80) ,
    indicatorColor:const Color(0XFF9e0080),
    shadowColor:const Color(0xFFFFBC01),
    toggleableActiveColor: Colors.white,
    selectedRowColor: Colors.black.withOpacity(0.3),
    scaffoldBackgroundColor:Colors.white,
    cardTheme:const CardTheme(
      color: Color(0xFF111827)
    ),
  );

  final _getStorage = GetStorage();
  final _darkThemKey = "isDarkTheme";


  void saveThemeData(bool isDarkMode){
    _getStorage.write(_darkThemKey,isDarkMode);
  }

  bool isSavedDarkMode(){
    return _getStorage.read(_darkThemKey) ?? false;
  }

  ThemeMode getThemMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme(){
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSavedDarkMode());
  }

}