import 'package:flutter/material.dart';
import 'package:ideacreator/sidebar.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

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
                    builder: (context) => Sidebar()),
              );
            },
            child: Container(
              width: 110,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 188, 213, 213),
              ),
              child: Center(
                child: Row(children: [
                  SizedBox(width: 20),
                  Text('Menu', style: TextStyle(
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

            SizedBox(height: 40),
          Text('Trending Projects',
          style: TextStyle(
            fontSize: 20,
            color: Colors.yellowAccent[200]
          ),
          ),

            SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
            width: 150,
            height: 60,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [  
                    SizedBox(width: 40,),
                      Text('Project 1', style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 213, 213),
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),

          ),
            Container(
            width: 150,
            height: 60,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [  
                    SizedBox(width: 40,),
                      Text('Project 2', style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 213, 213),
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),

          ),
          ],),

          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           Container(
            width: 150,
            height: 60,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [  
                    SizedBox(width: 40,),
                      Text('Project 3', style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 213, 213),
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),

          ),
            Container(
            width: 150,
            height: 60,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [  
                    SizedBox(width: 40,),
                      Text('Project 4', style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 213, 213),
              border: Border.all(
                color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),

          ),
          ],),

          ],
        ),
      ),
    );
  }
}