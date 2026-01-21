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

String _$uploadImageHash() => r'b212d2ab09c500ccb044ab037677a975935a293b';

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
