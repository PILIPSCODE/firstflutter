import 'package:flutter/cupertino.dart';

class LastMath extends StatelessWidget {
  const LastMath({
    Key? key,
    required this.hasilPerhitungan,
  }) : super(key: key);

  final double hasilPerhitungan;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$hasilPerhitungan',
      style: const TextStyle(
        fontSize: 40,
      ),
    );
  }
}