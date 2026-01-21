import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final headerTitleProvider = StateProvider((ref) => "Result");

final isEnableAutoSave = StateProvider((ref) => true);
