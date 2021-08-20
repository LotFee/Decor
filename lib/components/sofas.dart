import 'package:flutter/material.dart';


class Sofas extends StatefulWidget {

  @override
  _SofasState createState() => _SofasState();
}

class _SofasState extends State<Sofas> {
  int q=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 400,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image.asset(
                    'images/sofa.jfif',
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                  Align(
                      alignment: Alignment(1, 1),
                      child: Image.asset(
                        'images/icon-07.png',
                        width: 150,
                        height: 150,
                      )),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Align(
              alignment: Alignment(-.8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sofas",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.purple.shade300),
                        ),
                        Text(
                          "Sofas",
                          style: TextStyle(fontSize: 15, color: Colors.black38),
                        )
                      ],
                    ),
                    Text(
                      '\$ 420.-',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple.shade200),
                    ),
                    Text(
                      'Modern Furniture at Fair Prices Our promise? High-quality furniture at radically lower (and much fairer) prices than comparable retailers.',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity',
                              style:
                              TextStyle(fontSize: 18, color: Colors.blue.shade200),
                            ),
                            Row(
                              children: [
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q--;
                                    });
                                  },
                                  child: Icon(Icons.minimize),
                                  shape: CircleBorder(),
                                  fillColor: Colors.blue.shade100,
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30,height: 30
                                  ),
                                ),
                                Text('${q}' , style: TextStyle(fontSize: 19 , color: Colors.blue.shade200 ),),
                                RawMaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      q++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  shape: CircleBorder(),
                                  fillColor: Colors.blue.shade100,
                                  elevation: 0,
                                  constraints: BoxConstraints.tightFor(
                                      width: 30,height: 30
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Color',
                              style:
                              TextStyle(fontSize: 18, color: Colors.blue.shade200),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blue.shade800,
                                      )
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.red,
                                      )
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.green,
                                      )
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  padding: EdgeInsets.all(2.5),
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.black,
                                      )
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
