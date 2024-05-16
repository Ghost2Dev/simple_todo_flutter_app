import 'dart:math';
import 'package:flutter/material.dart';

Color generateRandomLightColor() {
  Random random = Random();
  // Generate a random color with high brightness and low saturation.
  int r = 128 + random.nextInt(128); // Bright red component
  int g = 128 + random.nextInt(128); // Bright green component
  int b = 128 + random.nextInt(128); // Bright blue component
  return Color.fromRGBO(r, g, b, 1);
}
