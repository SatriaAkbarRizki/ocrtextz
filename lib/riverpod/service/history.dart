import 'dart:developer';

import '../../database/database.dart';

import 'package:ocrtextz/model/scanocr.dart';
import 'package:ocrtextz/riverpod/imutable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history.g.dart';

@Riverpod(keepAlive: true)
class HistoryDatabase extends _$HistoryDatabase {
  late AppDatabase dbClient;

  @override
  AsyncValue<Object?> build() {
    dbClient = ref.read(databasesProvider);
    return AsyncValue.data([]);
  }


  Future getAllHistory() async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await dbClient.select(dbClient.historyItems).get(),
    );
    final data = state.value as List<HistoryItem>;
    log(data.length.toString());
    for (var i = 0; i < data.length; i++) {
      log(data[i].createdAt.toString());
    }
  }

  Future insertHistory(HistoryItemsCompanion value) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await dbClient.into(dbClient.historyItems).insert(value),
    );
  }

  Future deleteHistory(HistoryItemsCompanion value) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await dbClient.delete(dbClient.historyItems).delete(value),
    );
  }
}
