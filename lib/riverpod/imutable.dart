import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'imutable.g.dart';


@riverpod
Dio dio(Ref ref) => Dio();

@riverpod
String linkUrl(Ref ref) => dotenv.get("LINKAPINGROK");