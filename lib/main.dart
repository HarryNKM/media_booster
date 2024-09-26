import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_booster/screen/home/provider/home_provider.dart';
import 'package:media_booster/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: HomeProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
    ),
  ));
}
