import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: UserPannel(),
  ));
}

class UserPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 60, 44),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 30.0),),
                FilledButton(
                  onPressed: () {},
                  child: Text('Введите имя проекта', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 206, 190, 144)
                    )),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 53, 50, 40))),
                ),
                FilledButton(
                  onPressed: () {
                  },
                  child: Text('Выберите файл', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 206, 190, 144)
                    )),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 53, 50, 40))),
                )
              ],
            )
          ]
        )
      )
    );
  }
}