import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme1 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.grey[100],
  backgroundColor: Colors.grey[200],
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[100],
    elevation: 0,
    iconTheme: const IconThemeData(
      color: Color(0xff2E1D4E),
    ),
    actionsIconTheme: const IconThemeData(
      size: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.grey[100],
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  cardColor: Colors.deepPurple[100],
  buttonColor: Colors.purple[300],
  dividerColor: Colors.grey[600],
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    selectedItemColor: const Color(0xff2E1D4E),
    unselectedItemColor: Colors.grey[600],
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurple[50],
    foregroundColor: const Color(0xff2E1D4E),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      color: Colors.black,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: TextStyle(
      color: Colors.grey[500],
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);





ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xffE7C8C0),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffE7C8C0),
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xff190018),
    ),
    actionsIconTheme: IconThemeData(
      size: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xffE7C8C0),
      systemNavigationBarColor: Color(0xffFEE3D8),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  cardColor: const Color(0xffAD879B),
  dividerColor: const Color(0xff735A67),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xffFEE3D8),
    elevation: 0,
    selectedItemColor: Color(0xff190018),
    unselectedItemColor: Color(0xff735A67),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xffAD879B),
    foregroundColor: Color(0xff190018),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: TextStyle(
      color: Color(0xff735A67),
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);




ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xff061019),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xff061019),
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: Colors.grey[400],
    ),
    actionsIconTheme: const IconThemeData(
      size: 30,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Color(0xff061019),
      systemNavigationBarColor: Color(0xff121E2C),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  cardColor: const Color(0xffE55C30),
  dividerColor: const Color(0xffFCFCFC),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xff121E2C),
    elevation: 0,
    selectedItemColor: const Color(0xffFCFCFC),
    unselectedItemColor: Colors.grey[400],
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xffE55C30),
    foregroundColor: Color(0xffFCFCFC),
  ),
  textTheme: TextTheme(
    bodyLarge: const TextStyle(
      color: Color(0xffFCFCFC),
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: TextStyle(
      color: Colors.grey[300],
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);



ThemeData lightTheme2 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xffFDC7D7),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffFDC7D7),
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xff2A2746),
    ),
    actionsIconTheme: IconThemeData(
      size: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xffFDC7D7),
      systemNavigationBarColor: Color(0xffFEFEFE),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  cardColor: const Color(0xff8445EE),
  dividerColor: const Color(0xff2A2746),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xffFEFEFE),
    elevation: 0,
    selectedItemColor: Color(0xff0F182F),
    unselectedItemColor: Color(0xff0F182F),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: TextStyle(
      color: Color(0xff0F182F),
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);


ThemeData lightTheme3 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xffFDC7D7),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffFDC7D7),
    elevation: 0,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xff2A2746),
    ),
    actionsIconTheme: IconThemeData(
      size: 30,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xffFDC7D7),
      systemNavigationBarColor: Color(0xffFEFEFE),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  cardColor: const Color(0xff8445EE),
  dividerColor: const Color(0xff2A2746),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xffFEFEFE),
    elevation: 0,
    selectedItemColor: Color(0xff0F182F),
    unselectedItemColor: Color(0xff0F182F),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: TextStyle(
      color: Color(0xff0F182F),
      fontSize: 15,
      overflow: TextOverflow.ellipsis,
    ),
  ),
);
