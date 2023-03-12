import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moscas/pages/loading_screen.dart';

class LoadedImageScreen extends StatefulWidget {
  const LoadedImageScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoadedImageScreenState();
  }

}

class LoadedImageScreenState extends State<LoadedImageScreen> {
  File loadedImage = LoadingScreenState.loadedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('Help me!', 
                style: TextStyle(
                  fontSize: 40,
                )),
              Image.file(loadedImage),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(onPressed: (){}, 
                    child: const Text('Добавить пометку')),
                  FilledButton(onPressed: (){}, 
                    child: const Text('Завершить')),
                ],
              )
            ],
          ),)
    );
  }
}