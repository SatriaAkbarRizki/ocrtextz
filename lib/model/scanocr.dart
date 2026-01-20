import 'package:json_annotation/json_annotation.dart';

part 'scanocr.g.dart';

@JsonSerializable()
class ScanOcrModel {
  String status;
  String message;

  ScanOcrModel({required this.status, required this.message});

  factory ScanOcrModel.fromJson(Map<String, dynamic> json) =>
      _$ScanOcrModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScanOcrModelToJson(this);
}
