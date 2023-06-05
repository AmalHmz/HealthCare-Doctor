import 'package:firstly/utils/config.dart';
import 'package:flutter/material.dart';

 class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({Key? key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Patient",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
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
                  title: Text("Douha Nor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                subtitle: Text("Adult"),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundColor: Config.primaryColor,
                   child: Text(
                         'D', // display the first letter of the name
                         style: TextStyle(
                         color: Colors.white, // set the text color to white
                         fontSize: 24, // set the font size of the text
                      ),
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
                      Icon(Icons.calendar_month,
                     color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text("15/4/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      
                      ),

                    ],),
                     Row(children: [
                  Icon(Icons.access_time_filled,
                  color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text("10:00 AM",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                  ),
                 ],),
                 Row(children: [
                  Icon(Icons.location_on,
                  color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text("Manaa",
                  style: TextStyle(color: Colors.black54),
                  ),
                 ],)
                  ],
                 ), 
                 
                 SizedBox(height: 15),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap:() {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                        ),),
                      ),
                    ),
                      InkWell(
                      onTap:() {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Config.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                        ),),
                      ),
                    ),
                  ],
                 ),
                 SizedBox(height: 10),
              ],
            ),
           ),
            ),
            SizedBox(height: 20),
                Text(
            "About Patient",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
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
                  title: Text("Selmi Warda",
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                  ),
                ),
                subtitle: Text("Adult"),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundImage:AssetImage("assets/images/girl.jpg"),
                  
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
                      Icon(Icons.calendar_month,
                     color: Colors.black54,
                      ),
                      SizedBox(width: 5),
                      Text("16/4/2023",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                      
                      ),

                    ],),
                     Row(children: [
                  Icon(Icons.access_time_filled,
                  color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text("13:00 AM",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                  ),
                 ],),
                 Row(children: [
                  Icon(Icons.location_on,
                  color: Colors.black54,
                  ),
                  SizedBox(width: 5),
                  Text("Barika",
                  style: TextStyle(color: Colors.black54),
                  ),
                 ],)
                  ],
                 ), 
                 
                 SizedBox(height: 15),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap:() {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                        ),),
                      ),
                    ),
                      InkWell(
                      onTap:() {},
                      child: Container(
                        width: 150,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Config.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                        ),),
                      ),
                    ),
                  ],
                 ),
                 SizedBox(height: 10),
              ],
            ),
           ),
            ),
           
            
        ],
        ),
    );
    
  }
}