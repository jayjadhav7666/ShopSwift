import 'package:shopswift/provider/add_to_cart_provider.dart';
import 'package:shopswift/provider/favorite_provider.dart';
import 'package:shopswift/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // for add to cart
        ChangeNotifierProvider(create: (_) => CartProvider()),
        // for add to favorite
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
        home: const SplashScreen(),
      ),
    );
  }
}
