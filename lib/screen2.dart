import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/services.dart';
 class Sreen2 extends StatefulWidget {
   const Sreen2({Key? key}) : super(key: key);

   @override
   _Sreen2State createState() => _Sreen2State();
 }

 class _Sreen2State extends State<Sreen2> {
   final _formKey = GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
      // appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.light, elevation: 0,),
       backgroundColor: Colors.white,
       body: ColorfulSafeArea(
         color: Colors.white,
         child: Center(
           child: Padding(
             padding: const EdgeInsets.all(25.0),
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.9),
                           spreadRadius: -27,
                           blurRadius: 10,
                           offset: Offset(0, 0), // changes position of shadow
                         ),
                       ],
                     ),
                     child: Image.asset("images/icon-08.png" , width: 150 , height:  150, ),
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text("Find Your" , style:  TextStyle(fontSize: 30 ,color: Colors.black, letterSpacing: 2,fontWeight: FontWeight.bold),),
                       Text("Unique piece ! " , style:  TextStyle(fontSize: 30 ,color: Colors.black ,letterSpacing: 2,fontWeight: FontWeight.bold),),
                       SizedBox(height: 10,),
                       Text("Join us, " , style:  TextStyle(fontSize: 20 ,color: Colors.black ,letterSpacing: 1,),),
                       SizedBox(height: 20,),

                     ],
                   ),
                   Form(key: _formKey ,child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      SizedBox(height: 50, child:  TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "E-Mail",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.deepPurpleAccent ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey  ),
                          ),
                          hintText: "E-Mail",

                        ),

                      ),),
                       SizedBox(height:30,),
                       SizedBox(height: 50, child: TextFormField(
                         obscureText: true,
                         keyboardType: TextInputType.visiblePassword,
                         decoration: InputDecoration(
                           labelText:"Password" ,
                           focusedBorder: OutlineInputBorder(

                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.deepPurpleAccent  ),
                           ),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10),
                             borderSide: BorderSide(color: Colors.grey  ),
                           ),
                           hintText: "Password",
                         ),

                       ),),
                     ],
                   )),
                   SizedBox(height: 30,),
                   RaisedButton(
                     color: Colors.indigo[200], // background
                     textColor: Colors.white,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18)),// foreground
                     onPressed: () { },
                     child: Text('     Create Account     ' , style: TextStyle(fontSize: 20), ),
                     padding: EdgeInsets.only(left: 15 , top:  10 , right:  15 , bottom:  10 ),
                   ),
                   SizedBox(height: 20,),
                   Text("sign up with " , style:  TextStyle(fontSize: 15 ,color: Colors.black ,),),
                   Image.asset("images/icon-01.png", width: 80 , height: 80,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Already have an account?"),
                       TextButton(
                         style: TextButton.styleFrom(
                           primary: Colors.black, // foreground
                         ),
                         onPressed: () { },
                         child: Text('Sign in' , style: TextStyle(fontWeight: FontWeight.bold),),
                       )
                     ],
                   ),
                 ],

               ),
             ),
           ),
         ),
       ) ,
     );
   }
 }
