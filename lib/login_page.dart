import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:login_page/regsiter_page.dart';








class Login_Page extends StatefulWidget {

  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();

}

class _Login_PageState extends State<Login_Page> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/tree_given.jpg'),fit: BoxFit.cover,),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0,top: 55.2),
              child: Text('Welcome Back!',
                style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*.5,right: 35.0,left: 35.0,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'email ',
                        labelStyle: TextStyle(fontSize: 30.0,),
                        prefixIcon: Icon(Icons.email_outlined,),
                        // errorText: text.isEmpty?"Enter your name first":null,
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
                            child: Text('Sign In',
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

                          Navigator.push(context, MaterialPageRoute(builder: (_) => Regsiter_Page()));
                        },
                            child: Text(' Sign Up !',
                              style: TextStyle(fontSize: 20.0,color: Colors.amberAccent,
                              decoration: TextDecoration.underline),)),

                          TextButton(onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (builder) => NewPage()));
                          },

                              child: Text('Forgot Password !',
                              style: TextStyle(fontSize: 20.0,color: Colors.amberAccent,
                              decoration: TextDecoration.underline),))
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











// body: ListView(
//   children: [
//       //Image.asset('assets/image/photo.jpg',fit: BoxFit.fitHeight,),
//     Image.asset("assets/image/tree_given.jpg",fit: BoxFit.fitHeight,),
//       SizedBox(
//         height: 20,
//       ),
//       //Image.asset("assets/image/waterfall.jpg",fit: BoxFit.fitHeight,),
//     Padding(
//       padding: const EdgeInsets.only(left: 60.0),
//       child: Text('Welcome Back!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
//     ),
//
//     Padding(
//       padding: const EdgeInsets.only(left: 100.0),
//       child: Text('Login Your existand account',style: TextStyle(fontSize: 15),),
//     ),
//     Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: TextField(
//             decoration: InputDecoration(
//               labelText: 'Email',
//             hintText: 'email ',
//             labelStyle: TextStyle(fontSize: 30.0,),
//             prefixIcon: Icon(Icons.person_outline,),
//             border: OutlineInputBorder(),
//           ),
//           ),
//         ),//
//     Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: TextField(
//         decoration: InputDecoration(
//           labelText: 'Password',
//           hintText: 'password',
//           labelStyle: TextStyle(fontSize: 30.0,),
//           prefixIcon: Icon(Icons.person_outline,),
//           border: OutlineInputBorder(),
//         ),
//       ),
//     ),//
//
//     ElevatedButton(onPressed: (){
//     },
//         child: Text("Login")),
//     // he// height: MediaQuery.of(context).size.height),
//   ],
// ),