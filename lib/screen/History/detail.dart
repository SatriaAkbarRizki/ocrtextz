import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailHistory extends StatelessWidget {
  final int indexCard;
  const DetailHistory({super.key,  required this.indexCard});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        actionsPadding: EdgeInsets.only(right: 12),
        actions: [
          Text('18-2-2025', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Hero(
            tag: 'hero-cardhistory-$indexCard',
            child: SingleChildScrollView(
              child: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit. Ex sapien vitae pellentesque sem placerat in id. Pretium tellus duis convallis tempus leo eu aenean. Urna tempor pulvinar vivamus fringilla lacus nec metus. Iaculis massa nisl malesuada lacinia integer nunc posuere. Semper vel class aptent taciti sociosqu ad litora. Conubia nostra inceptos himenaeos orci varius natoque penatibus. Dis parturient montes nascetur ridiculus mus donec rhoncus. Nulla molestie mattis scelerisque maximus eget fermentum odio. Purus est efficitur laoreet mauris pharetra vestibulum fusce.',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
