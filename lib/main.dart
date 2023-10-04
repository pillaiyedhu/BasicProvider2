import 'package:day8_provider_try/CustomSlider.dart';
import 'package:day8_provider_try/ProgressValueProvider.dart';
import 'package:day8_provider_try/VideoProgress.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: SetStateTry(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class SetStateTry extends StatefulWidget {

  SetStateTryState createState() {
    return SetStateTryState();
  }
}

class SetStateTryState extends State<SetStateTry>{
  // Style styles = const TextStyle(
  //   color: Colors.teal,
  //   fontSize: 24
  // );
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is State Management with Provider",style: TextStyle(
          color: Colors.teal, fontSize: 24),
        ),
        centerTitle: true,
      ),

      body: ChangeNotifierProvider(
        create:(context)=>ProgressValue(),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: VideoProgress()
              ),
              Positioned(
                bottom: 0,
                left: 0,
                height: 0,
                child: CustomSlider()
              )
            ],
          ),
        ),
      ),
    );
  }
}
