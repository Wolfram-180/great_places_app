import 'dart:io';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: (_storedImage == Null)
              ? Text(
                  'No image taken',
                  textAlign: TextAlign.center,
                )
              : Image.file(
                  _storedImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
          alignment: Alignment.center,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {},
            label: Text('Take picture'),
            textColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
