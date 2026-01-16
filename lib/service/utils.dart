

import 'dart:developer';

import 'package:image_picker/image_picker.dart';

class UtilsTool {
  final picker = ImagePicker();

  Future<XFile?> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    log(image?.path.toString() ?? "Kosong");
    return image;
  }
}
