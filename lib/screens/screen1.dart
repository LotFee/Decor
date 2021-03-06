import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';

class Screen1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.light, elevation: 0,),
      backgroundColor: Colors.white,
      body: ColorfulSafeArea(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Decor &" , style:  TextStyle(fontSize: 40 ,color: Colors.black, letterSpacing: 2,fontWeight: FontWeight.bold),),
                    Text("enjoy!" , style:  TextStyle(fontSize: 40 ,color: Colors.black ,letterSpacing: 2,fontWeight: FontWeight.bold),),

                  ],
                ),
                Image.asset("images/icon-09.png"),
                RaisedButton(
                  color: Colors.indigo[200], // background
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),// foreground
                  onPressed: () {
                        Navigator.pushNamed(context, '/second');
                  },
                  child: Text('     Get Started     ' , style: TextStyle(fontSize: 20), ),
                  padding: EdgeInsets.only(left: 15 , top:  10 , right:  15 , bottom:  10 ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black, // foreground
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second' );
                      },
                      child: Text('Sign in' , style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ],

            ),
          ),
        ),
      ) ,
    );
  }
}
