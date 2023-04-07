import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RiwayatKonversi extends StatelessWidget {
  const RiwayatKonversi({
    Key? key,
    required this.listhasil,
    required this.listawalangka,
    required this.listhasilangka,
  }) : super(key: key);

  final List<String> listhasil;
  final List<String> listawalangka;
  final List<String> listhasilangka;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listhasil.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Celcius'),
            subtitle: Text(listhasil[index]),
            trailing:
                // Text(listawalangka[index]),
                Text(listawalangka[index] + "C°" +" = "+ listhasilangka[index]),
            
          );
          
        },
      ),
    );
  }
}
