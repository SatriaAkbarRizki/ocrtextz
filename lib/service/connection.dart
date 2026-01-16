import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:image_picker/image_picker.dart';

class ConnectionApi {
  final dio = Dio();

  final linkUrl = dotenv.get("LINKAPINGROK");

  Future uploadImage(XFile image) async {
    final imageFile = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        image.path,
        filename: image.path.split("/").last,
      ),
    });

    final response = await dio.post(
      "$linkUrl/files/uploadImage",
      options: Options(
        headers: {"apiKey": dotenv.get("APIKEY")},
        contentType: "application/json",
      ),

      data: imageFile,
    );

    if (response.statusCode == 200) {
      log("Data response: ${response.data}");
    }
    return null;
  }
}
