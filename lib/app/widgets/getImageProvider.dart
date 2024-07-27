import 'dart:io';

import 'package:flutter/material.dart';

ImageProvider<Object> getImageProvider(String imagePath) {
  if (imagePath.startsWith('http') || imagePath.startsWith('https')) {
    // Use CachedNetworkImage for remote URLs
    return NetworkImage(imagePath);
  } else {
    // Handle local paths
    final file = File(imagePath);
    if (file.existsSync()) {
      return FileImage(file);
    } else {
      return const AssetImage('assets/images/placeholder.png');
    }
  }
}
