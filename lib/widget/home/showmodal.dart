import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ocrtextz/riverpod/homeriverpod.dart';
import 'package:ocrtextz/riverpod/service/sendimage.dart';
import 'package:ocrtextz/widget/home/loadingresult.dart';

String sentenceLorem =
    "Lorem ipsum dolor sit amet consectetur adipiscing elit. Blandit quis suspendisse aliquet nisi sodales consequat magna. Sem placerat in id cursus mi pretium tellus. Finibus facilisis dapibus etiam interdum tortor ligula congue. Sed diam urna tempor pulvinar vivamus fringilla lacus. Porta elementum a enim euismod quam justo lectus. Nisl malesuada lacinia integer nunc posuere ut hendrerit. Imperdiet mollis nullam volutpat porttitor ullamcorper rutrum gravida. Ad litora torquent per conubia nostra inceptos himenaeos. Ornare sagittis vehicula praesent dui felis venenatis ultrices. Dis parturient montes nascetur ridiculus mus donec rhoncus. Potenti ultricies habitant morbi senectus netus suscipit auctor. Maximus eget fermentum odio phasellus non purus est. Platea dictumst lorem ipsum dolor sit amet consectetur. Dictum risus blandit quis suspendisse aliquet nisi sodales. Vitae pellentesque sem placerat in id cursus mi. Luctus nibh finibus facilisis dapibus etiam interdum tortor. Eu aenean sed diam urna tempor pulvinar vivamus. Tincidunt nam porta elementum a enim euismod quam. Iaculis massa nisl malesuada lacinia integer nunc posuere. Velit aliquam imperdiet mollis nullam volutpat porttitor ullamcorper. Taciti sociosqu ad litora torquent per conubia nostra. Primis vulputate ornare sagittis vehicula praesent dui felis. Et magnis dis parturient montes nascetur ridiculus mus. Accumsan maecenas potenti ultricies habitant morbi senectus netus. Mattis scelerisque maximus eget fermentum odio phasellus non. Hac habitasse platea dictumst lorem ipsum dolor sit. Vestibulum fusce dictum risus blandit quis suspendisse aliquet. Ex sapien vitae pellentesque sem placerat in id. Neque at luctus nibh finibus facilisis dapibus etiam. Tempus leo eu aenean sed diam urna tempor. Viverra ac tincidunt nam porta elementum a enim. Bibendum egestas iaculis massa nisl malesuada lacinia integer. Arcu dignissim velit aliquam imperdiet mollis nullam volutpat. Class aptent taciti sociosqu ad litora torquent per. Turpis fames primis vulputate ornare sagittis vehicula praesent. Natoque penatibus et magnis dis parturient montes nascetur. Feugiat tristique accumsan maecenas potenti ultricies habitant morbi. Nulla molestie mattis scelerisque maximus eget fermentum odio. Cubilia curae hac habitasse platea dictumst lorem ipsum. Mauris pharetra vestibulum fusce dictum risus blandit quis. Quisque faucibus ex sapien vitae pellentesque sem placerat. Ante condimentum neque at luctus nibh finibus facilisis. Duis convallis tempus leo eu aenean sed diam. Sollicitudin erat viverra ac tincidunt nam porta elementum. Nec metus bibendum egestas iaculis massa nisl malesuada. Commodo augue arcu dignissim velit aliquam imperdiet mollis. Semper vel class aptent taciti sociosqu ad litora. Cras eleifend turpis fames primis vulputate ornare sagittis. Orci varius natoque penatibus et magnis dis parturient. Proin libero feugiat tristique accumsan maecenas potenti ultricies. Eros lobortis nulla molestie mattis scelerisque maximus eget. Curabitur facilisi cubilia curae hac habitasse platea dictumst. Efficitur laoreet mauris pharetra vestibulum fusce dictum risus. Adipiscing elit quisque faucibus ex sapien vitae pellentesque. Consequat magna ante condimentum neque at luctus nibh. Pretium tellus duis convallis tempus leo eu aenean. Ligula congue sollicitudin erat viverra ac tincidunt nam. Fringilla lacus nec metus bibendum egestas iaculis massa. Justo lectus commodo augue arcu dignissim velit aliquam. Ut hendrerit semper vel class aptent taciti sociosqu. Rutrum gravida cras eleifend turpis fames primis vulputate. Inceptos himenaeos orci varius natoque penatibus et magnis. Venenatis ultrices proin libero feugiat tristique accumsan maecenas. Donec rhoncus eros lobortis nulla molestie mattis scelerisque. Suscipit auctor curabitur facilisi cubilia curae hac habitasse. Purus est efficitur laoreet mauris pharetra vestibulum fusce. Amet consectetur adipiscing elit quisque faucibus ex sapien. Nisi sodales consequat magna ante condimentum neque at. Cursus mi pretium tellus duis convallis tempus leo. Interdum tortor ligula congue sollicitudin erat viverra ac. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Euismod quam justo lectus commodo augue arcu dignissim. Nunc posuere ut hendrerit semper vel class aptent. Porttitor ullamcorper rutrum gravida cras eleifend turpis fames. Conubia nostra inceptos himenaeos orci varius natoque penatibus. Dui felis venenatis ultrices proin libero feugiat tristique. Ridiculus mus donec rhoncus eros lobortis nulla molestie. Senectus netus suscipit auctor curabitur facilisi cubilia curae. Phasellus non purus est efficitur laoreet mauris pharetra. Dolor sit amet consectetur adipiscing elit quisque faucibus. Suspendisse aliquet nisi sodales consequat magna ante condimentum. In id cursus mi pretium tellus duis convallis. Dapibus etiam interdum tortor ligula congue sollicitudin erat. Urna tempor pulvinar vivamus fringilla lacus nec metus. Aenim euismod quam justo lectus commodo augue. Lacinia integer nunc posuere ut hendrerit semper vel. Nullam volutpat porttitor ullamcorper rutrum gravida cras eleifend. Torquent per conubia nostra inceptos himenaeos orci varius. Vehicula praesent dui felis venenatis ultrices proin libero. Montes nascetur ridiculus mus donec rhoncus eros lobortis. Habitant morbi senectus netus suscipit auctor curabitur facilisi. Fermentum odio phasellus non purus est efficitur laoreet. Lorem ipsum dolor sit amet consectetur adipiscing elit. Blandit quis suspendisse aliquet nisi sodales consequat magna. Sem placerat in id cursus mi pretium tellus. Finibus facilisis dapibus etiam interdum tortor ligula congue. Sed diam urna tempor pulvinar vivamus fringilla lacus. Porta elementum a enim euismod quam justo lectus. Nisl malesuada lacinia integer nunc posuere ut hendrerit.";

Future<void> showModalBottomSheetHome(BuildContext context) async {
  return showModalBottomSheet(
    backgroundColor: Color(0xfff7f4ed),
    isDismissible: true,
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
    transitionAnimationController: AnimationController(
      vsync: Navigator.of(context),
      duration: Duration(milliseconds: 600),
    ),
    context: context,
    builder: (context) => Consumer(
      builder: (context, ref, child) {
        final futureScanOCR = ref.watch(uploadImageProvider);
        final visibleData = ref.watch(visibleText);
        final headerTitle = ref.watch(headerTitleProvider);
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 10,
              top: 10,
            ),
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: Offset(0.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ),
                      );
                    },
                    child: Text(
                      headerTitle,
                      key: ValueKey(headerTitle),
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium?.copyWith(fontSize: 24),
                    ),
                  ),
                ),
                Divider(thickness: 2),
                futureScanOCR.when(
                  data: (data) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!ref.read(visibleText)) {
                        ref.read(visibleText.notifier).state = true;
                      }

                      Future.delayed(Duration(milliseconds: 1500)).whenComplete(
                        () {
                          if (context.mounted) {
                            ref.read(headerTitleProvider.notifier).state =
                                "Saving to History";
                          }
                        },
                      );
                    });
                    return AnimatedOpacity(
                      opacity: visibleData ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),

                      child: SelectableText(
                        cursorColor: Color(0xffefe8de),
                        selectionColor: Color(0xffefe8de),
                        data?.message ?? "",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          height: 1.5,
                          fontSize: 14,
                        ),

                        textAlign: TextAlign.justify,
                      ),
                    );
                  },
                  error: (error, stackTrace) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!ref.read(visibleText)) {
                        ref.read(visibleText.notifier).state = true;
                      }
                    });
                    return AnimatedOpacity(
                      opacity: visibleData ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        'Have error on server, please try again ',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                  loading: () => Loadingresult(),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
