import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moscas/pages/loaded_image_screen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoadingScreenState();
  }

}

class LoadingScreenState extends State<LoadingScreen> {
  String projectName = '';
  bool isButtonDisabled = true;
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
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Введите название проекта',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    onChanged: (String value) {
                      projectName = value;
                      isButtonDisabled = false;
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
              FilledButton(
                
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loadedImageScreen()),
                  );
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

  Future<XFile?> pickImage() async {
    ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    
    return image;

  }
}
