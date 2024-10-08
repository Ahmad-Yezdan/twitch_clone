// import 'dart:io';
import 'package:image_picker/image_picker.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

// Future<Uint8List?> pickImage() async {
//   FilePickerResult? pickedImage =
//       await FilePicker.platform.pickFiles(type: FileType.image);
//   if (pickedImage != null) {
//     if (kIsWeb) {
//       return pickedImage.files.first.bytes;
//     }
//     return await File(pickedImage.files.first.path!).readAsBytes();
//   }
//   return null;
// }

Future<Uint8List?> pickImage() async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source:ImageSource.gallery );
  if (file != null) {
    return await file.readAsBytes();
  }
  return null;
}
