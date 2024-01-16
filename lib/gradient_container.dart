import 'package:flutter/material.dart';
import 'dart:math';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 211, 183, 23),
            Color.fromARGB(255, 82, 208, 83),
            Color.fromARGB(255, 118, 88, 152),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: const ImageWidget());
  }
}

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  var noOfImage = 4;
  var randomObj = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice$noOfImage.png', width: 200),
          TextButton(
            onPressed: () {
              setState(() {
                if (noOfImage == 1) {
                } else {
                  noOfImage--;
                }
              });
              print('fxn called');
            },
            style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 20, 3, 255)),
            child: const Text('Previous Roll', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (noOfImage == 6) {
                } else {
                  noOfImage++;
                }
              });
              print('fxn called');
            },
            style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 20, 3, 255)),
            child: const Text('Next Roll', style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
