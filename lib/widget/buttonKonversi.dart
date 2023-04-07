import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class btnkonversi extends StatelessWidget {
  const btnkonversi({
    Key? key, 
    required this.Onclick,
  }) : super(key: key);

  final Function Onclick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                 Onclick();
                }, child: const Text("Konversi"))),
      ],
    );
  }}