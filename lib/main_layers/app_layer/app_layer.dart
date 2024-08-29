import 'package:a_a_travel_ui/main_layers/presentation_layer/app_home/app_home.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/app_profile/app_profile.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
    //     overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gellix',
      ),
      home: AppHome(),
    );
  }
}
