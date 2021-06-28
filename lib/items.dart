// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class ItemCard extends StatefulWidget {

//   @override
//   _ItemCardState createState() => _ItemCardState();
// }

// class _ItemCardState extends State<ItemCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             // height: 300,
//             aspectRatio: 16/9,
//             autoPlay: true,
//             autoPlayCurve: Curves.fastOutSlowIn,
//             enlargeCenterPage: true,
//             viewportFraction: 0.8,
//           ),
//           items: [
//             itemCard("Macbook Pro", "assets/macbook pro.jpg"),
//             itemCard("Note 20 Ultra", "assets/note 20 ultra.jpg"),
//             itemCard("Backlit Keyboard", "assets/backlit keyboard.jpg"),
//             itemCard("Gaming PC", "assets/gaming pc.jpg"),
//             itemCard("Iphone 12 Pro", "assets/iphone 12 pro.jpg"),
//           ],
//         ),
//       ],
//     );
//   }
// }

// Widget itemCard(name, img){
//   return Card(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                 child: Stack(
//                   children: [
//                     Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage(img)
//                     )
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     // color: Colors.green,
//                     child: ListTile(
//                     title: Text(name ,style: TextStyle(fontSize: 25, color: Colors.yellow),),
//                     subtitle: Row(
//                       children: [
//                         Icon(Icons.star, color: Colors.yellow,),
//                         Icon(Icons.star, color: Colors.yellow,),
//                         Icon(Icons.star, color: Colors.yellow,),
//                         Icon(Icons.star, color: Colors.yellow,),
//                         Icon(Icons.star, color: Colors.yellow,),
//                         Text('5.0 (23 Reviews)', style: TextStyle(color: Colors.yellow),)
//                       ],
//                     ),
//                       ),
//                   ),
//                 )
//                   ],
//                 ),
//               );
// }