import 'package:flutter/material.dart';
import 'package:ideacreator/categories_sidebar.dart';

import 'home.dart';
import 'sidebar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({ Key? key }) : super(key: key);

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
    
              SizedBox(height: 40),
    
               GestureDetector(
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoriesSidebar()),
                );
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 213, 213),
                ),
                child: Center(
                  child: Row(children: [
                    SizedBox(width: 20),
                    Text('Categories', style: TextStyle(
                      fontSize: 20
                    ),),
                     Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 112, 112, 112),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_drop_down, size: 30)
                    ),
                  ],),
                ),
              ),
            ),
    
    
    
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
                      Text('Enter Keywords', style: TextStyle(
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home()),
                );
              },
              child: Container(
                child: Center(child: Text('Submit')),
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
        ],),
      ),
    );
  }
}