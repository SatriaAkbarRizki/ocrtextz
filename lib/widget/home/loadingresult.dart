import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class Loadingresult extends StatelessWidget {
  const Loadingresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Shimmer(
          duration: Duration(milliseconds: 1500),

          child: Container(
            height: 15,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Shimmer(
          duration: Duration(milliseconds: 1500),

          child: Container(
            height: 15,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Shimmer(
          duration: Duration(milliseconds: 1500),

          child: Container(
            height: 15,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Shimmer(
          duration: Duration(seconds: 3),

          child: Container(
            height: 15,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
