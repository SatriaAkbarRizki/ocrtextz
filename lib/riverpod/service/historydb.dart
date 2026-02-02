import 'dart:developer';

import '../../database/database.dart';

import 'package:ocrtextz/riverpod/imutable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'historydb.g.dart';

@Riverpod(keepAlive: true)
class HistoryDatabase extends _$HistoryDatabase {
  late AppDatabase dbClient;

  List<HistoryItem> listHistory = [];

  @override
  AsyncValue<Object?> build() {
    dbClient = ref.read(databasesProvider);
    return const AsyncValue.data(<HistoryItem>[]);
  }

  Future getAllHistory() async {
    state = AsyncValue.loading();

    state = await AsyncValue.guard(
      () async => await dbClient.select(dbClient.historyItems).get(),
    );
    final data = state.value as List<HistoryItem>;
    listHistory = data;
    log(data.length.toString());
  }

  Future insertHistory(HistoryItemsCompanion value) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await dbClient.into(dbClient.historyItems).insert(value),
    );

    state = AsyncValue.data(<HistoryItem>[]);
  }

  // Inside your deleteHistory method
  Future<void> deleteHistory(int id) async {
    listHistory.removeWhere((element) => element.id == id);
    await (dbClient.delete(
      dbClient.historyItems,
    )..where((t) => t.id.equals(id))).go();
  }
}
