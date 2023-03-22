import 'dart:io';
import 'package:flutter/material.dart';
import 'package:moscas/pages/loading_screen.dart';

class MarkAdding extends StatefulWidget {
  const MarkAdding({super.key});

  
  @override
  State<StatefulWidget> createState() {
    return MarkAddingState();
  }
  
}

class MarkAddingState extends State<MarkAdding> {
  File loadedImage = LoadingScreenState.loadedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.file(loadedImage),
            FilledButton(
              onPressed: () {},
              child: const  Text('Выбрать тип метки'))
          ]),)
    );
  }

}