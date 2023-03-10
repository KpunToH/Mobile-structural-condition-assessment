import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class loadedImageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loadedImageScreenState();
  }

}

class loadedImageScreenState extends State<loadedImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('Help me!', 
                style: TextStyle(
                  fontSize: 40,
                )),
              Row(
                children: [
                  FilledButton(onPressed: (){}, 
                    child: Text('Добавить пометку')),
                  FilledButton(onPressed: (){}, 
                    child: Text('Завершить')),
                ],
              )
            ],
          ),)
    );
  }
}