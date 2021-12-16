import 'package:flutter/material.dart';
import 'package:ideacreator/categories.dart';

class CategoriesSidebar extends StatelessWidget {
  const CategoriesSidebar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 142, 198, 200),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.asset('assets/images/logo.png'),
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
  SizedBox(height: 50,),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width*0.85 ,
                color: Color.fromARGB(255,207,233,217),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 30,),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                     child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                      ),
                      child: IconButton(
                        color: Color.fromARGB(255, 58, 154, 184),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ),
                   ),

                  SizedBox(height: 40,),
                   Center(
                     child: GestureDetector(
                       onTap: null,
                       child: Text('Software', style: TextStyle(
                         fontSize: 30
                       ),),
                     ),
                   ),
                   SizedBox(height: 10,),
                   Center(
                     child: SizedBox(
                       width: 300,
                       child: Divider(
                         thickness: 1,
                         color: Colors.black,
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Center(
                     child: Text('Electrical', style: TextStyle(
                       fontSize: 30
                     ),),
                   ),
                    SizedBox(height: 10,),
                   Center(
                     child: SizedBox(
                       width: 300,
                       child: Divider(
                         color: Colors.black,
                         thickness: 1,
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Center(
                     child: GestureDetector(
                       onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoriesPage()),
                        );
                       },
                       child: Text('Mechanical', style: TextStyle(
                         fontSize: 30
                       ),),
                     ),
                   ),
                    SizedBox(height: 10,),
                   Center(
                     child: SizedBox(
                       width: 300,
                       child: Divider(
                         thickness: 1,
                         color: Colors.black,
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Center(
                     child: Text('Biomedical', style: TextStyle(
                       fontSize: 30
                     ),),
                   ),
                   SizedBox(height: 10,),
                   Center(
                     child: SizedBox(
                       width: 300,
                       child: Divider(
                         thickness: 1,
                         color: Colors.black,
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Center(
                     child: Text('Leisure Time', style: TextStyle(
                       fontSize: 30
                     ),),
                   ),
                ],),
              ),
            ),

          ],
        ),
      ),
    );
  }
}