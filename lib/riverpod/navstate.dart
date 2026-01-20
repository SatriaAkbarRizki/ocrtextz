import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ocrtextz/screen/History/history.dart';
import 'package:ocrtextz/screen/home.dart';

final listScreenRiverpod = Provider((ref) => [HomeScreen(), HistoryScreen()]);

final navBarRiverpod = StateProvider<int>((ref) => 0);
