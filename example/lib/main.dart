import 'dart:io';

import 'package:flutter/material.dart';

import 'package:move_to_home/move_to_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) async {
        if (didPop && Platform.isAndroid) {
          debugPrint('handling back key');
          await MoveToHome.moveToHome();
          debugPrint('success');
        }
      },
      child: MaterialApp(
        home: PopScope(
          onPopInvoked: (didPop) async {
            if (didPop && Platform.isAndroid) {
              debugPrint('handling back key');
              await MoveToHome.moveToHome();
              debugPrint('success');
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Plugin example app'),
            ),
            body: const Center(
              child: Text('press back key to test'),
            ),
          ),
        ),
      ),
    );
  }
}
