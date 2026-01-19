import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocrtextz/service/connection.dart';
import 'package:ocrtextz/service/utils.dart';
import 'package:ocrtextz/widget/home/appbar.dart';
import 'package:ocrtextz/widget/home/pickimage.dart';

class HomeScreen extends StatelessWidget {
  final ultis = UtilsTool();
  final con = ConnectionApi();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarHome(),
              Text(
                "Instant Text Scanner",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontSize: 28),
              ),
              Text(
                'Convert any image into editable text in seconds',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 20),

              ButtonPickImage(),
            ],
          ),
        ),
      ),
      
    );
  }
}
