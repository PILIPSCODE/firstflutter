import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    Key? key,
    required this.elInput,
  }) : super(key: key);

  final TextEditingController elInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: elInput,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: 'Celcius',
        hintText: 'Masukan Suhu Celcius',
      ),
    );
  }
}