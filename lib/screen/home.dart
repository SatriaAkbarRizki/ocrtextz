import 'package:flutter/material.dart';
import 'package:ocrtextz/service/connection.dart';
import 'package:ocrtextz/service/utils.dart';

class HomeScreen extends StatelessWidget {
  final ultis = UtilsTool();
  final con = ConnectionApi();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Pick Image and upload for testing"),
              ElevatedButton(
                onPressed: () async {
                  await ultis.pickImage().then((value) async {
                    if (value != null) {
                      await con.uploadImage(value);
                    }
                  });
                },
                child: Text("Pick Image"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
