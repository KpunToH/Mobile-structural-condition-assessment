import 'dart:io';
import 'package:flutter/material.dart';
import 'package:moscas/pages/loading_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moscas/pages/loaded_image_screen.dart';

class MarkAdding extends StatefulWidget {
  const MarkAdding({super.key});

  
  @override
  State<StatefulWidget> createState() {
    return MarkAddingState();
  }
  
}

class MarkAddingState extends State<MarkAdding> {
  _pickGalleryImage() async {
      ImagePicker picker = ImagePicker();
      XFile? xLoadedImage;
      do {
        xLoadedImage = await picker.pickImage(source: ImageSource.gallery);
      } while (xLoadedImage == null);
      loadedImage = File(xLoadedImage.path);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedImageScreen()));
    }

  _pickCameraImage() async {
      ImagePicker picker = ImagePicker();
      XFile? xLoadedImage;
      do {
        xLoadedImage = await picker.pickImage(source: ImageSource.gallery);
      } while (xLoadedImage == null);
      loadedImage = File(xLoadedImage.path);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedImageScreen()));
    }
  bool markHasType = false;
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
              onPressed: () 
              {
                showDialog(context: context, 
                builder: (context) 
                  {
                    return AlertDialog(
                      title: Text("тип марки"),
                      actions: [
                        TextButton(onPressed: () {setState((){markHasType = true;}); Navigator.of(context).pop();}, child: Text("Трещина"))
                      ],
                    );
                  } 
                );
              },
              child: const  Text('Выбрать тип метки')),
            FilledButton(
              onPressed:markHasType?()
              {
                showDialog(context: context,
                 builder: (context){return AlertDialog(
                  title: const Text("Загрузить изображение"),
                  actions: [
                    FilledButton(onPressed: (){_pickGalleryImage();}, child: const Text("Из галереи")),
                    FilledButton(onPressed: (){_pickCameraImage();}, child:const Text("Из камеры"))
                  ],
                 );});
              }:null ,
              child: const Text('Выбрать изображение'))
          ]),)
    );
  }

}