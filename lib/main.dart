import 'package:first_flutter_project/widget/InputSuhu.dart';
import 'package:first_flutter_project/widget/LastMath.dart';
import 'package:first_flutter_project/widget/PilihanDropDown.dart';
import 'package:first_flutter_project/widget/RiwayatKonversi.dart';
import 'package:first_flutter_project/widget/buttonKonversi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApo());
}

class MyApo extends StatelessWidget {
  const MyApo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "learn Flutter",
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Bebas(),
    );
  }
}

class Bebas extends StatefulWidget {
  const Bebas({super.key});

  @override
  State<Bebas> createState() => _BebasWidget();
}

class _BebasWidget extends State<Bebas> {
  List<String> ListSatuanSuhu = ["Kelvin", "Reamur", "Fahrenhite"];
  TextEditingController elInput = TextEditingController();
  String SelctedDropDown = "Kelvin";
  double hasilPerhitungan = 0.0;

  List<String> listhasil = [];
  List<String> listawalangka = [];
  List<String> listhasilangka = [];
  void naikkanangka() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Konversi Suhu By Pilipus')),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputSuhu(elInput: elInput),
            const SizedBox(
              height: 8,
            ),
            PilihanDrop(
              SelctedDropDown: SelctedDropDown,
              ListSatuanSuhu: ListSatuanSuhu,
              Dropkepilih: OnDropDownChange,
            ),
            const SizedBox(height: 10),
            const Text(
              "Hasil",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            LastMath(hasilPerhitungan: hasilPerhitungan),
            const SizedBox(height: 10),
            btnkonversi(
              Onclick: logicSuhu,
            ),
            const SizedBox(height: 10),
            const Text(
              "Riwayat Konversi:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            RiwayatKonversi(
                listhasil: listhasil,
                listawalangka: listawalangka,
                listhasilangka: listhasilangka),
          ],
        ),
      ),
    );
  }

  void logicSuhu() {
    return setState(() {
      if (elInput.text.isNotEmpty) {
        switch (SelctedDropDown) {
          case "Kelvin":
            hasilPerhitungan = int.parse(elInput.text) + 273.15;
            listawalangka.add(elInput.text);
            listhasil.add('Kelvin');
            listhasilangka.add(hasilPerhitungan.toString());
            break;
          case "Reamur":
            hasilPerhitungan = int.parse(elInput.text) * 4 / 5;
            listawalangka.add(elInput.text);
            listhasil.add('Reamur');
            listhasilangka.add(hasilPerhitungan.toString());

            break;
          case "Fahrenhite":
            hasilPerhitungan = (int.parse(elInput.text) * 9 / 5) + 32;
            listawalangka.add(elInput.text);
            listhasil.add('Fahrenhite');
            listhasilangka.add(hasilPerhitungan.toString());

            break;
        }
      }
    });
  }

  void OnDropDownChange(String? v) {
    return setState(() {
      SelctedDropDown = v.toString();
    });
  }
}























































































































// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 margin: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: 300,
//                       height: 150,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(
//                             color: Colors.grey,
//                             width: 2,
//                           )),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             children: [
//                               Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Icon(
//                                     Icons.account_circle,
//                                     size: 60,
//                                   )),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Pilipus Kuncoro W',
//                                     style: TextStyle(
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     'Experinced App Developer',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 3, top: 9, right: 3),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   '123 Main Street',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                                 Text(
//                                   '(415) 555-1090',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 9),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 Icon(
//                                   Icons.accessibility,
//                                   size: 30,
//                                 ),
//                                 Icon(
//                                   Icons.timer,
//                                   size: 30,
//                                 ),
//                                 Icon(
//                                   Icons.phone_android,
//                                   size: 30,
//                                 ),
//                                 Icon(
//                                   Icons.phone_iphone,
//                                   size: 30,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 )),
//           ],
//         ),







// class BlueBox extends StatelessWidget {
//   const BlueBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      width: 70,
//      height: 70,
//      decoration: BoxDecoration(
//      color: Colors.blue,
//      borderRadius: BorderRadius.circular(50),
//      border: Border.all(
//      color: Colors.black,
//      width: 2,
//      ),
//      ),

//         );
//   }
// }
// class Boxbirubesar extends StatelessWidget {
//   const Boxbirubesar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return 
      
//        Container(
//        width: 70,
//        height: 150,
//        decoration: BoxDecoration(
//        color: Colors.blue,
//        border: Border.all(
//        color: Colors.black,
//        width: 2,
//        ),
//        ),

//           );
    
//   }
// }

// class ListOfBlueBox extends StatelessWidget {
//   const ListOfBlueBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         bluebox(),
//         bluebox(),
//         bluebox(),
//         bluebox(),
//         bluebox(),
//         bluebox(),
//         bluebox(),
        
//       ],
//     );
//   }
// }

// class bluebox extends StatelessWidget {
//   const bluebox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//       color: Colors.blue,
//         border: Border.all(
//           color: Colors.black,
//           width: 2,
//         )
//       ),
//     );
//   }
// }
















































































// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApo());
// }

// class MyApo extends StatelessWidget {
//   const MyApo({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter app',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Belajar Bang')),
//         body: Column(
//           children: [
//            HeroMl(Heroid: "1", HeroName: "nana"),
//            HeroMl(Heroid: "2", HeroName: "franco"),
//            HeroMl(Heroid: "3", HeroName: "akai"),
//            HeroMl(Heroid: "4", HeroName: "Kufra"),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class HeroMl extends StatelessWidget{
//   const HeroMl({
//     Key?  key,
//     required this.Heroid,
//     required this.HeroName
//   }):super(key: key);
//   final String Heroid;
//   final String HeroName;

//    @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child:Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Text(Heroid),
//         SizedBox(width: 10),
//         Text(HeroName)
//       ],
//     ), 
//     );
//   }