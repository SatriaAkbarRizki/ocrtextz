import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocrtextz/model/scanocr.dart';
import 'package:ocrtextz/riverpod/imutable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sendimage.g.dart';

@riverpod
class UploadImage extends _$UploadImage {
  @override
  FutureOr<ScanOcrModel?> build() {
    return null;
  }

  Future uploadImage(XFile image) async {
    state = AsyncLoading();

    final imageFile = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        image.path,
        filename: image.path.split("/").last,
      ),
    });

    final response = await ref
        .read(dioProvider)
        .post(
          "${ref.read(linkUrlProvider)}/files/uploadImage",
          options: Options(headers: {"apiKey": dotenv.get("APIKEY")}),

          data: imageFile,
        );

    if (response.statusCode == 200) {
      final json = ScanOcrModel.fromJson(response.data);
      log(json.toJson().toString());
      state = AsyncData(json);
    } else {
      state = AsyncError(response.statusMessage.toString(), StackTrace.empty);
    }
  }
}
