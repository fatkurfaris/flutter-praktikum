import 'package:flutter/material.dart';
import 'package:flutter_5_permissionnew/image_picker/image_picker_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("Image Picker")),
          body: ImagePickerSection(),
        ));
  }
}
