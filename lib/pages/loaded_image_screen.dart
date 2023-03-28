import 'dart:io';

import 'package:flutter/material.dart';
import 'package:moscas/pages/loading_screen.dart';
import 'package:moscas/pages/mark_adding_screen.dart';

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
              const Text('Выберите метку или завершите установку этажа', 
                style: TextStyle(
                  fontSize: 40,
                )),
              Image.file(loadedImage, width: 300.0, height: 200.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilledButton(onPressed: (){}, 
                    child: const Text('Завершить')),
                  FilledButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MarkAdding()));
                  }, 
                    child: const Text('Добавить пометку')),
                ],
              )
            ],
          ),)
    );
  }
}