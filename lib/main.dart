import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 198, 200),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/bulb_icon.png')),
            Text('IDEAS', 
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            )
    
          ],),
          SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Row(
                  children: [  
                  SizedBox(width: 20,),
                    Text('Email', style: TextStyle(
                      fontSize: 15
                    ),),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),

          ),

          SizedBox(height: 30),

          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Row(
                  children: [  
                  SizedBox(width: 20,),
                    Text('Password', style: TextStyle(
                      fontSize: 15
                    ),),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),

          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 40, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?'),
              ],
            ),
          ),
          
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home()),
              );
            },
            child: Container(
              child: Center(child: Text('Login')),
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 229, 138),
                border: Border.all(
                  color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ),
          ),
SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              color: Colors.black,
              height: 2,
              width: 150,
            ),
            SizedBox(width: 10),
            Text('OR'),
            SizedBox(width: 10),
            Container(
              color: Colors.black,
              height: 2,
              width: 150,
            ),
          ],),
SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: Row(
              
              children: [
                SizedBox(width: 30,),
                Icon(Icons.facebook, color: Color.fromARGB(255,59,89,152), size: 30,),
                SizedBox(width: 10,),
                Text('Login With Facebook', style: TextStyle(
                      fontSize: 16,
                       color: Color.fromARGB(255,59,89,152),
                  ),),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),

          ),

          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            child: Row(
              
              children: [
                SizedBox(width: 30,),
                SizedBox(
                  height: 30,
                  child: Image.asset('assets/images/google_logo.png')),
                SizedBox(width: 10,),
                Text('Login With Google', style: TextStyle(
                      fontSize: 16,
                       color: Color.fromARGB(255,59,89,152),
                  ),),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),

          ),
        ],),
      ),
    );
  }
}