
import 'package:firstly/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget{
 
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Config.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:80),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                SizedBox(height: 100),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    
                    child: Icon(CupertinoIcons.arrow_left,
                    color: Colors.white,
                    size: 25,
                    ),
                  ),
                   InkWell(
                    onTap: () {
                    },
                    
                    child: Icon(CupertinoIcons.ellipsis,
                    color: Colors.white,
                    size: 25,
                    ),
                  ),
                ],
               ),
               Padding(padding: EdgeInsets.symmetric(vertical: 10),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CircleAvatar(radius: 35,
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                SizedBox(height: 15),
                Text("Dr Doctor Name",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),),
                SizedBox(height: 5),
                Text("Speciality ",
                style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,

                ),),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                  ],
                ),
               ],),
               ),
              ],
            ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.5 ,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max ,
                children: [
                  Text("BIO",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  SizedBox(height: 5),
                  Text("Dr Doctor Name is a (Speciality) doctor , he have an experience of % years ...",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Reviews",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(width: 10),
                      Icon(CupertinoIcons.star_fill, color: Colors.amber),
                      SizedBox(width: 10),
                      Text("4.9",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(width: 5),
                      Text("(130 review)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Config.primaryColor,
                      ),),
                   
                    ],
                  ),
                 
                  
                  SizedBox(height: 20),
                  Text("Location",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        
                      ),
                      child: Icon(CupertinoIcons.pin,
                      color: Config.primaryColor,
                      size: 30,),
                    ),
                    title: Text("Manaa, Mohamed Benaamri Clinic",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    subtitle: Text("adress line of the clinic ,"),
                  ),
                ],
              ),
              
            ),

          ],
        ),
      ),
     
    );
  }
}