import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image.g.dart';

@riverpod
class Image extends _$Image {
  final picker = ImagePicker();

  @override
  XFile? build() {
    return null;
  }

  Future<XFile?> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    log(image?.path.toString() ?? "Kosong");
    return image;
  }

  Future<XFile?> pickCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    log(image?.path.toString() ?? "Kosong");
    return image;
  }
}
