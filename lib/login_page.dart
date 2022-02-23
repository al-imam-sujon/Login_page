
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login_Page extends StatefulWidget {

  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
            //Image.asset('assets/image/photo.jpg',fit: BoxFit.fitHeight,),
          Image.asset("assets/image/tree_given.jpg",fit: BoxFit.fitHeight,),
            SizedBox(
              height: 20,
            ),
            //Image.asset("assets/image/waterfall.jpg",fit: BoxFit.fitHeight,),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Text('Welcome Back!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text('Login Your existand account',style: TextStyle(fontSize: 15),),
          ),
          Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  hintText: 'email ',
                  labelStyle: TextStyle(fontSize: 30.0,),
                  prefixIcon: Icon(Icons.person_outline,),
                  border: OutlineInputBorder(),
                ),
                ),
              ),//
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'password',
                labelStyle: TextStyle(fontSize: 30.0,),
                prefixIcon: Icon(Icons.person_outline,),
                border: OutlineInputBorder(),
              ),
            ),
          ),//

          ElevatedButton(onPressed: (){
            
          },
              child: Text("Login")),
          // he// height: MediaQuery.of(context).size.height),
        ],
      ),
    );
  }
}
