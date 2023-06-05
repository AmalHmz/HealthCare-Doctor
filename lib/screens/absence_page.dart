import 'package:firstly/screens/add_absence_page.dart';
import 'package:firstly/utils/config.dart';
import 'package:flutter/material.dart';

class AbsencePage extends StatelessWidget{
  @override
  Widget build (BuildContext context ) {
    return  Scaffold(
      backgroundColor: Colors.white, // Set the background color of the page
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
         
          SizedBox(height: 10),
          Text(
            "Work break",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w500,
              color: Config.primaryColor,
            ),
          ),
            SizedBox(height: 15),
            Container(
            padding:EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
           child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                ListTile(
                  title: Text("I will be absent in this peroid :",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
               
              
               
                ),
                
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    thickness: 1,
                    height: 20,
                  ), 
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                  
                  SizedBox(width: 5),
                  Text("From ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  ),
                 ],),
                    
                    
                    Row(children: [
                      Icon(Icons.calendar_month,
                     color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text("03/06/2023",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      
                      ),

                    ],),
                     Row(children: [
                  
                  SizedBox(width: 5),
                  Text("To",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  ),
                 ],),
                 
                   Row(children: [
                  Icon(Icons.calendar_month,
                  color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text("06/06/2023",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                 ],),
                  ],
                 ), 
                 
                
                 SizedBox(height: 15),
              ],
            ),
           ),
           
            ),
            SizedBox(height: 15),
            Container(
            padding:EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
      )
  ),
  SizedBox(height: 40),
     Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) => AddAbsencePage(),
                             ) );
                      },
                      
                      child: Padding(
                        
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                           horizontal: 95),
                           child:Text(
                            "Add an absence  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            
                           ),
                    ),
                  ),
        ],
      ),
      ),
    );
}
}