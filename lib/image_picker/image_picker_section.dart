import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_5_permissionnew/image_picker/common_submit_button.dart';
import 'package:flutter_5_permissionnew/image_picker/image_picker_helper.dart';

class ImagePickerSection extends StatefulWidget {
  const ImagePickerSection({Key? key}) : super(key: key);

  @override
  _ImagePickerSectionState createState() => _ImagePickerSectionState();
}

class _ImagePickerSectionState extends State<ImagePickerSection> {
  String imagePath = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _imageSection(),
          _buttonSectionGallery(),
          _buttonSectionCamera(),
        ],
      ),
    );
  }

  Widget _imageSection() {
    if (imagePath.isEmpty) {
      return Container(
        child: Text(("Gambar tidak ada")),
      );
    }
    return Container(
      child: Image.file(
        File(imagePath),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
      ),
    );
  }

  Widget _buttonSectionGallery() {
    return CommonSubmitButton(
      labelButton: "Import Dari Galery",
      submitCallback: (value) {
        print("Callback Value - $value");
        imagePath = "";
        ImagePickerHelper()
            .getImageFromGallery((value) => _processImage(value));
      },
    );
  }

  Widget _buttonSectionCamera() {
    return CommonSubmitButton(
      labelButton: "Import Dari Camera",
      submitCallback: (value) {
        print("Callback Value - $value");
        imagePath = "";
        ImagePickerHelper().getImageFromCamera((value) => _processImage(value));
      },
    );
  }

  void _processImage(String? value) {
    if (value != null) {
      setState(() {
        imagePath = value;
      });
    }
  }
}
