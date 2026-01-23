import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocrtextz/database/database.dart';
import 'package:ocrtextz/model/scanocr.dart';
import 'package:ocrtextz/riverpod/homeriverpod.dart';
import 'package:ocrtextz/riverpod/imutable.dart';
import 'package:ocrtextz/riverpod/service/historydb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sendimage.g.dart';

final visibleText = StateProvider((ref) => false);

@riverpod
class UploadImage extends _$UploadImage {
  @override
  FutureOr<ScanOcrModel?> build() {
    return null;
  }

  Future uploadImage(XFile image) async {
    ref.invalidate(visibleText);
    ref.invalidate(headerTitleProvider);
    state = AsyncLoading();

    final imageFile = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        image.path,
        filename: image.path.split("/").last,
      ),
    });

    state = await AsyncValue.guard(() async {
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
        _autoSaveValueToHistory(json);
        return json;
      }
    });
  }

  void _autoSaveValueToHistory(ScanOcrModel value) {
    Future.delayed(Duration(milliseconds: 1000)).whenComplete(() {
      if (ref.read(isEnableAutoSave) == true) {
        ref.read(headerTitleProvider.notifier).state = "Saving to History";
        if (value.message.isNotEmpty) {
          ref
              .watch(historyDatabaseProvider.notifier)
              .insertHistory(
                HistoryItemsCompanion(
                  result: Value(value.message),
                  createdAt: Value(DateTime.now()),
                ),
              )
              .whenComplete(() {
                log("Succes saved");
                Future.delayed(Duration(milliseconds: 1000)).whenComplete(
                  () => ref.read(headerTitleProvider.notifier).state = "Result",
                );
              });
        }
      }
    });
  }
}
