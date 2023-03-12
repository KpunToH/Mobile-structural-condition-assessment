import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moscas/pages/loaded_image_screen.dart';
import 'dart:io';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoadingScreenState();
  }

}

class LoadingScreenState extends State<LoadingScreen> {
  String projectName = '';
  bool isButtonDisabled = true;
  late TextEditingController _controller;
  static late File loadedImage;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _pickImage() async {
      ImagePicker picker = ImagePicker();
      XFile? xLoadedImage;
      do {
        xLoadedImage = await picker.pickImage(source: ImageSource.gallery);
      } while (xLoadedImage == null);
      loadedImage = File(xLoadedImage.path);
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadedImageScreen()));
    }  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                SizedBox(height: 40, width: 300,
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'Введите название проекта',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    onChanged: (String value) {
                      projectName = value;
                      if (projectName.isNotEmpty) {
                        setState(() {
                          isButtonDisabled = false;
                        });
                      }
                      else{
                        setState(() {
                        isButtonDisabled = true;
                      });
                      }
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
              FilledButton(
                
                onPressed:isButtonDisabled ? null :  () {
                  _pickImage();
                },
                child: const Text('Выберите файл', ),
              )
            ],
          )
        ]
      )
      )
    );

    
  }
}
