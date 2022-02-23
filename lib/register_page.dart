import 'package:flutter/material.dart';

import 'login_page.dart';


class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  _Register_PageState createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {



  String text= '';
  bool _secure = false;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/waterfall.jpg'),fit: BoxFit.cover,),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0,top: 55.2),
              child: Text('Create Account',
                style: TextStyle(fontSize: 50.0,
                    fontWeight: FontWeight.bold,color: Colors.amber),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*.2,right: 35.0,left: 35.0,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Name ',
                        labelStyle: TextStyle(fontSize: 30.0,),
                        prefixIcon: Icon(Icons.person_outline,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                      ),
                      onChanged: (Value){
                        text = Value;
                      },
                      onSubmitted: (Value){
                        setState(() {
                          text = Value;
                        });
                        print(Value);
                      },

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'email ',
                        labelStyle: TextStyle(fontSize: 30.0,),
                        prefixIcon: Icon(Icons.email_outlined,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'password ',
                        labelStyle: TextStyle(fontSize: 30.0,),
                        prefixIcon: Icon(Icons.lock_open,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),


                      ),


                    ),

                    SizedBox(
                      height: 20,
                    ),

                    TextField(

                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'confarm password ',

                        labelStyle: TextStyle(fontSize: 30.0,),
                        prefixIcon: Icon(Icons.lock_open,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),

                        suffixIcon: IconButton(
                          icon: Icon(_secure?Icons.visibility:Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              _secure = !_secure;
                            });
                          },
                        ),
                        errorText: text.isEmpty?'Empty' : null,
                      ),


                      onChanged: (Value){
                        text = Value;
                        },
                      onSubmitted: (Value){
                        setState(() {
                          text = Value;
                        });
                        print(Value);
                        },

                      obscureText: _secure,

                    ),


                    // CircleAvatar(
                    //   child: Text('Sign In',style: TextStyle(fontSize: 23.0,color: Colors.white),),
                    //   backgroundColor: Colors.black,
                    //
                    //

                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(onPressed: (){

                    },
                        child: Container(
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.2)),
                            child: Text('Sign Up',
                              style: TextStyle(fontSize: 30.0,color: Colors.black),
                            )
                        )
                    ),

                    SizedBox(
                      height: 100,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          //Navigator.push(context, CupertinoPageRoute(builder: (_)=> Regsiter_Page()));

                          Navigator.push(context, MaterialPageRoute(builder: (_) => Login_Page()));
                        },
                            child: Text(' Sign In ',
                              style: TextStyle(fontSize: 20.0,color: Colors.limeAccent,
                                  decoration: TextDecoration.underline),)),

                      ],
                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}







//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String text= '';
//   bool _secure = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10.5),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//
//           //TextField
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Enter Your Name',
//               labelText: 'Name :',
//               labelStyle: TextStyle(
//                 fontSize: 20.5,
//                 color: Colors.black,
//               ),
//               hintStyle: TextStyle(
//                 fontSize: 15.5,
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               prefixIcon: Icon(Icons.account_circle),
//               errorText: text.isEmpty?"Enter your name first":null,
//               prefixIconColor: Colors.greenAccent,
//             ),
//             onChanged: (Value){
//               text = Value;
//             },
//             onSubmitted: (Value){
//               setState(() {
//                 text = Value;
//               });
//               print(Value);
//             },
//
//
//           ),
//
//
//           //SizeBox
//           SizedBox(
//             height: 10.5,
//           ),
//
//
//           Align(
//               alignment: Alignment.topLeft,
//               child: Text('Password')),
//
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'New Password',
//               labelStyle: TextStyle(
//                 fontSize: 20.5,
//                 color: Colors.blue,
//               ),
//               hintStyle: TextStyle(
//                 fontSize: 15.5,
//               ),
//
//
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(color: Colors.blue,width: 5.5),
//               ),
//
//
//               prefixIcon: Icon(Icons.lock),
//               suffixIcon: IconButton(
//                 icon: Icon(_secure?Icons.remove_red_eye:Icons.security),
//                 onPressed: (){
//                   setState(() {
//                     _secure = !_secure;
//                   });
//                 },
//               ),
//               errorText: text.isEmpty?'Empty' : null,
//               prefixIconColor: Colors.greenAccent,
//             ),
//
//
//             keyboardType: TextInputType.number,
//             obscureText: _secure,
//             obscuringCharacter: '*',
//             maxLength: 20,
//             onChanged: (Value){
//               text = Value;
//             },
//             onSubmitted: (Value){
//               setState(() {
//                 text = Value;
//               });
//               print(Value);
//             },
//
//           ),
//         ],
//       ),
//     );
//   }
// }
