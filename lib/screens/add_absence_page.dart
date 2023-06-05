import 'package:firstly/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAbsencePage extends StatefulWidget {
  const AddAbsencePage({Key? key});
  @override
  State<AddAbsencePage> createState() => _AddAbsencePageState();

}
class _AddAbsencePageState extends State<AddAbsencePage> {
  bool passToggle = true ;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: Text("I will be absent in this period :",
              style: TextStyle(
                fontSize: 20,
              ),),),
             
              SizedBox(height: 15),
              Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "From",
                  hintText: "DD/MM/YY",
                  border: OutlineInputBorder(),
                  
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
               Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "To",
                  hintText: "DD/MM/YY",
                  border: OutlineInputBorder(),
                  
                   prefixIconColor: Config.primaryColor,
                ),
              ),
              ),
              
              
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                         
                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Center(
                          child:  Text(
                            " Save absence",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        ),
                    ),
                  ),
                ),

              ),
            
             
            ],
            ),
        ),
      ),
    );
  }
}