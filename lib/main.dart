import 'package:flutter/material.dart';
import 'package:flutter_vista_perfil/pages/page_login.dart';
import 'package:flutter_vista_perfil/pages/user_profile_page.dart';
import 'package:flutter_vista_perfil/pages/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;

  // Define un tema personalizado
final ThemeData customTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 19, 93, 99),
  backgroundColor: const Color.fromARGB(255, 140, 221, 217),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.white, 
      onPrimary: Colors.black, 
      textStyle: const TextStyle(fontSize: 20),
      elevation: 3, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), 
      ),

    ),
  ),
);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: customTheme, // Aplica el tema personalizado
      initialRoute: isLoggedIn ? UserProfilePage.id : LoginPage.id,
      routes: {
        LoginPage.id: (context) =>  Scaffold(
          body: LoginPage(),
        ),
        UserProfilePage.id: (context) =>  Scaffold(
          body: UserProfilePage(),
        ),
      },
    );
  }
}
