import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PilihanDrop extends StatelessWidget {
  const PilihanDrop({
    Key? key,
    required this.SelctedDropDown,
    required this.ListSatuanSuhu, 
    required this.Dropkepilih,
  }) : super(key: key);

  final String SelctedDropDown;
  final List<String> ListSatuanSuhu;
  final Function Dropkepilih ;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        isExpanded: true,
        value: SelctedDropDown,
        items: ListSatuanSuhu.map((String e) {
          return DropdownMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList(),
        onChanged: (v) {
          Dropkepilih(v);
        });
  }
}