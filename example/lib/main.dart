import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:move_to_home/move_to_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          if (Platform.isAndroid) {
            debugPrint('handling back key');
            await MoveToHome.moveToHome();
            debugPrint('success');
            return Future.value(true);
          }
          return Future.value(false);
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
    );
  }
}
