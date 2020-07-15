import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('I Am Poor Not!'),
          backgroundColor: Colors.black12,
        ),
        body:  Center(
          child: Image(
            image: NetworkImage(
                'https://i.dlpng.com/static/png/6809381_thumb.webp', scale: 1.2),
          ),
        ),
      ),
    ),
  );
}
