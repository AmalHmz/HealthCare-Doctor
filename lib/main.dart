

import 'package:firstly/screens/auth_page.dart';
import 'package:firstly/utils/main_layout.dart';
import 'package:flutter/material.dart';
import '../utils/text.dart';
import 'utils/config.dart';
import 'package:firstly/screens/Welcome_page.dart';

void main(){
  runApp(const MyApp());
}
//to commit changes

class MyApp extends StatelessWidget {
const MyApp ({super.key});
static final navigatorKey = GlobalKey<NavigatorState>();

@override
Widget build(BuildContext context) {
  return MaterialApp(
   navigatorKey: navigatorKey ,
   title: 'HealthCare App',
   debugShowCheckedModeBanner: false,
   theme: ThemeData (
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: Config.primaryColor,
      border: Config.OutlinedBorder,
      focusedBorder: Config.focusBorder,
      errorBorder: Config.errorBorder,
      enabledBorder: Config.OutlinedBorder,
      floatingLabelStyle: TextStyle(color: Config.primaryColor),
      prefixIconColor: Colors.black38,
    ),
    
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Config.primaryColor,
      
      selectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey.shade700,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
    ),
   
   ),
   
    
   initialRoute: '/',
   routes: {
    '/':(context) => WelcomePage(),
    'main':(context) =>  const MainLayout(),
   },
   
  );   

}
}




