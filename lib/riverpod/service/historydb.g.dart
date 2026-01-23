// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historydb.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HistoryDatabase)
final historyDatabaseProvider = HistoryDatabaseProvider._();

final class HistoryDatabaseProvider
    extends $NotifierProvider<HistoryDatabase, AsyncValue<Object?>> {
  HistoryDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'historyDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$historyDatabaseHash();

  @$internal
  @override
  HistoryDatabase create() => HistoryDatabase();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<Object?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<Object?>>(value),
    );
  }
}

String _$historyDatabaseHash() => r'3068f9014b879ccd1b6c8e178afe1ee40a6dd7d2';

abstract class _$HistoryDatabase extends $Notifier<AsyncValue<Object?>> {
  AsyncValue<Object?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Object?>, AsyncValue<Object?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Object?>, AsyncValue<Object?>>,
              AsyncValue<Object?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
