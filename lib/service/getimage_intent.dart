import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';

class ImageIntent {
  MethodChannel channelIntent = MethodChannel("channel_shared");

  Future<File?> getSharedImage() async {
    final path = await channelIntent.invokeMethod<String>("callGetSharedImage");
    if (path != null) {
      log(path);
      return File(path);
    }
    return null;
  }
}
