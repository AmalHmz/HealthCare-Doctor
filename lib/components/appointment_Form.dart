import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import '../utils/config.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _dateController = TextEditingController();
  final _reasonController = TextEditingController();
  final _filePickerController = TextEditingController();
 final _filePickerFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          TextFormField(
            controller: _nameController,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              
              labelText: 'Patient Name',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.person),
              prefixIconColor: Config.primaryColor,
    
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _dateController,
            decoration: const InputDecoration(
               labelText: 'Appointment Date',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.date_range),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _reasonController,
            decoration: InputDecoration(
              labelText: 'Appointment reason',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.note),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
             TextFormField(
              controller: _filePickerController,
              focusNode: _filePickerFocusNode,
              decoration: InputDecoration(
                labelText: 'Import a file',
                hintText: 'Click to select a file',
                prefixIcon: Icon(Icons.attach_file),
                prefixIconColor: Config.primaryColor,
              ),
              onTap: () async {
               
                FilePickerResult? result = await FilePicker.platform.pickFiles();
                if (result != null) {
                  _filePickerController.text = result.files.single.name;
                }
                // Add file picker logic here.
              },
            ),
          
                    
         SizedBox(height: 10),
          Padding(
            
            padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
            child: ElevatedButton(
              
              onPressed: () {
                if (_formKey.currentState?.validate() == true) {
                 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Appointment information saved.')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
             primary: Config.primaryColor), 
              
             child: Center(
                child:  Text(
                 "Save",
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
        ],
      ),
    );
  }
}
