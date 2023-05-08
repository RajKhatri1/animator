import 'package:animator/screen/homepage/view/Animationscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => Animatescreen(),),

      ]
    )
  );
}

