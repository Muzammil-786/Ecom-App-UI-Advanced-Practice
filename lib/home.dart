import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List <dynamic> popularimg = ["assets/macbook pro.jpg", "assets/note 20 ultra.jpg", "assets/backlit keyboard.jpg", "assets/gaming pc.jpg", "assets/iphone 12 pro.jpg", "assets/macbook air.jpeg", "assets/mercedes.jpg", "assets/mutton.jpg", "assets/roadster.jpg", "assets/royal field.jpg", "assets/wireless.jpg", "assets/tab.jpg", "assets/samsung.jpg"];
  List <dynamic> popularname = ["Macbook Pro", "Note 20 Ultra", "Backlit Keyboard", "Gaming PC", "Iphone 12 Pro", "Macbook Air", "Mercedes", "Mutton", "Roadster", "Royal Field", "Wireless", "Tabs", "Samsung"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100.0),
              child: Text("Ecom App UI", style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Icon(Icons.notifications, size: 30, color: Colors.black,),
            )
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Items", style: TextStyle(fontSize: 30),)
                ),
                Container(
                  margin: EdgeInsets.only(left: 200),
                  child: Text("view more", style: TextStyle(fontSize: 20, color: Colors.purple),),
                )
              ],
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 330,
                  // aspectRatio: 16/9,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                ),
                items: [
                  itemCard("Macbook Pro", "assets/macbook pro.jpg"),
                  itemCard("Note 20 Ultra", "assets/note 20 ultra.jpg"),
                  itemCard("Backlit Keyboard", "assets/backlit keyboard.jpg"),
                  itemCard("Gaming PC", "assets/gaming pc.jpg"),
                  itemCard("Iphone 12 Pro", "assets/iphone 12 pro.jpg"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 150),
              child: Container(
                // margin: EdgeInsets.only(top: 20, left: 10),
                child: Text("More Categories", style: TextStyle(fontSize: 30),)
              ),
            ),

            SizedBox(height: 10,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: Card(
                    shadowColor: Colors.black,
                    elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(Icons.local_drink, size: 50, color: Colors.purple,),
                        title: Text("Clothes", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        subtitle: Text("5 Items", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(Icons.bolt, size: 50, color: Colors.purple,),
                        title: Text("Electronics", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        subtitle: Text("20 Items", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(Icons.house, size: 50, color: Colors.purple,),
                        title: Text("Household", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        subtitle: Text("9 Items", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(Icons.bolt, size: 50, color: Colors.purple,),
                        title: Text("Appliances", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        subtitle: Text("5 Items", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Card(
                      shadowColor: Colors.black,
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(Icons.double_arrow, size: 50, color: Colors.purple,),
                        title: Text("Other", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        subtitle: Text("15 Items", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text("Popular Items", style: TextStyle(fontSize: 30),)
                ),
                Container(
                  margin: EdgeInsets.only(left: 80),
                  child: Text("view more", style: TextStyle(fontSize: 20, color: Colors.purple),),
                )
              ],
            ),

            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              children: List.generate(popularimg.length, (index){
                return Card(
                  shadowColor: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("${popularimg[index]}"),
                              )
                            ),
                          ),
                        ]
                      ),
                      ListTile(
                        title: Text("${popularname[index]}", style: TextStyle(fontSize: 20),),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow,),
                                Icon(Icons.star, color: Colors.yellow,),
                                Icon(Icons.star, color: Colors.yellow,),
                                Icon(Icons.star, color: Colors.yellow,),
                                Icon(Icons.star, color: Colors.yellow,),
                              ],
                            ),
                            Text('5.0 (23 Reviews)', style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )

          ],
        ),
      ),

      
    );
  }
}

Widget itemCard(name, img){
  return Card(
    shadowColor: Colors.black,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img)
            )
          ),
        ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            height: 30,
            child: ListTile(
            title: Text(name ,style: TextStyle(fontSize: 25, color: Colors.black),),
            subtitle: Row(
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Text('5.0 (23 Reviews)', style: TextStyle(color: Colors.black),)
              ],
            ),
              ),
          ),
        )
      ],
    ),
  );
}