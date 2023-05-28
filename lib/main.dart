import 'package:flutter/material.dart';
import 'package:meet_shop/Screens/category_page/controller/categories_page_controller.dart';
import 'package:meet_shop/Screens/login_page/controller/login_page_controller.dart';
import 'package:meet_shop/Screens/signup_screen/controller/signup_page_controller.dart';
import 'package:meet_shop/Screens/cart_page/controller/cart_provider.dart';
import 'Screens/intro_page/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
        ChangeNotifierProvider<LoginPageController>(
            create: (_) => LoginPageController()),
        ChangeNotifierProvider<SignUpPageController>(
            create: (_) => SignUpPageController()),
        ChangeNotifierProvider<CategoriesPageController>(
            create: (_) => CategoriesPageController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
