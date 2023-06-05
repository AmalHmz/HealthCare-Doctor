import 'package:flutter/material.dart';

import '../components/appointment_Form.dart';
import '../utils/config.dart';


class AppointmentFolderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Appointment Folder",
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Config.spaceSmall,
                AppointmentForm(),
               Config.spaceSmall,
               Center(
                child: TextButton(
                  onPressed:  () {},
                  child: Text(
                    "",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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