import 'package:flutter/material.dart';

BoxDecoration loadingScreenBackground() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/loading-screen-bg-img.jpg"),
      fit: BoxFit.cover,
      alignment: Alignment.bottomLeft,
    ),
  );
}
