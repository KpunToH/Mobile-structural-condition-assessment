import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    	return MaterialApp(
      	title: 'Flutter Demo',
      	theme: ThemeData(
        		primarySwatch: Colors.green,
      		),
      	home: Scaffold(
			appBar: AppBar(title: const Text('Moscas'),),
			body: const Text ('Welcome!', style: TextStyle(
				fontSize: 30,
				color: Color.fromARGB(255, 30, 30, 40),
			),)
			)
    		);
  	}
}