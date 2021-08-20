import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
import '../components/chairs.dart';
//import '../nigthStands.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Catigories",
              style: TextStyle(fontSize: 20, letterSpacing: 2),
            ),
            Image.asset(
              'images/icon-05.png',
              width: 30,
              height: 30,
            ),
            SizedBox(width: 35,),
          ],
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage('images/desk.png',),
                  ),
                ),
                child: null),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context,'/second');
              },
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 30,
                // padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/icon-03.png' , width: 20, height: 20,) ,
                      Text("Price Range" , style: TextStyle(color: Colors.black38 ,fontSize: 10),),


                    ],
                  ),
                ),
               SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 30,
                   // padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/icon-03.png' , width: 20, height: 20,) ,
                        Text("Tags" , style: TextStyle(color: Colors.black38 ,fontSize: 10),),

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 30,
                    //padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/icon-03.png' , width: 20, height: 20,) ,
                        Text("Style" , style: TextStyle(color: Colors.black38 ,fontSize: 10),),

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 30,
                   // padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/icon-03.png' , width: 20, height: 20,) ,
                        Text("Color" , style: TextStyle(color: Colors.black38 ,fontSize: 10),),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/chair');
                    },
                    child: Stack(
                      alignment: Alignment(-.9,-1),
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Image.asset('images/chair4.jfif' ,width: 200 , height: 200,),
                        ),
                        Image.asset('images/icon-02.png' ,width: 40 , height: 40,),
                        Positioned(
                        top: 150,
                        bottom: 0,
                        right: 40,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chairs"),
                            Row(
                              children: [
                                Text("From" , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
                                Text("\$190.-" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/night');
                    },
                    child: Stack(
                      alignment: Alignment(-.9,-1),
                      children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child:  Image.asset('images/nightStand.jfif' ,width: 200 , height: 200,),
                       ),
                        Image.asset('images/icon-02.png' ,width: 40 , height: 40,),
                        Positioned(
                          top: 150,
                          bottom: 0,
                          right: 40,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Night Stands"),
                              Row(
                                children: [
                                  Text("From" , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
                                  Text("\$140.-" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/sofa');
                    },
                    child: Stack(
                      alignment: Alignment(-.9,-1),
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Image.asset('images/sofa.jfif' ,width: 200 , height: 200,),
                        ),
                        Image.asset('images/icon-02.png' ,width: 40 , height: 40,),
                        Positioned(
                          top: 145,
                          bottom: 0,
                          right: 40,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sofas"),
                              Row(
                                children: [
                                  Text("From" , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
                                  Text("\$420.-" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/desk');
                    },
                    child: Stack(
                      alignment: Alignment(-.9,-1),
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:  Image.asset('images/desk5.jfif' ,width: 200 , height: 200,),
                        ),
                        Image.asset('images/icon-02.png' ,width: 40 , height: 40,),
                        Positioned(
                          top: 150,
                          bottom: 0,
                          right: 40,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Desks"),
                              Row(
                                children: [
                                  Text("From" , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),),
                                  Text("\$320.-" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.indigo[200], // background
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),// foreground
              onPressed: (){},
              child: Text('     Click on Any Card     ' , style: TextStyle(fontSize: 20), ),
              padding: EdgeInsets.only(left: 15 , top:  10 , right:  15 , bottom:  10 ),
            ),

          ],
        ),
      ),
    );

  }
}
