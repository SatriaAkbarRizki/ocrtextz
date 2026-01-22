// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sendimage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UploadImage)
final uploadImageProvider = UploadImageProvider._();

final class UploadImageProvider
    extends $AsyncNotifierProvider<UploadImage, ScanOcrModel?> {
  UploadImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadImageHash();

  @$internal
  @override
  UploadImage create() => UploadImage();
}

String _$uploadImageHash() => r'41952b4d7240b5c10db553854beb5e250d4d270d';

abstract class _$UploadImage extends $AsyncNotifier<ScanOcrModel?> {
  FutureOr<ScanOcrModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ScanOcrModel?>, ScanOcrModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ScanOcrModel?>, ScanOcrModel?>,
              AsyncValue<ScanOcrModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
