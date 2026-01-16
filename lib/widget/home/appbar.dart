import 'package:flutter/material.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Hi, Welcome', style: Theme.of(context).textTheme.labelSmall),
        CircleAvatar(backgroundColor: Color(0xffefe8de)),
      ],
    );
  }
}
