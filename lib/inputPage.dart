import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Models/Student.dart';



void callTheApi(Student thisOne){

  
}

class MyCustomForm extends StatefulWidget {
  @override

  final String  url;

  const MyCustomForm({super.key, required this.url});
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Student thisOne=Student();
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your full ID',
              labelText: 'Id',
            ),
            onSaved: (newValue) {
              thisOne.iD=newValue;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: const Icon(Icons.phone),
          //     hintText: 'Enter a phone number',
          //     labelText: 'Phone',
          //   ),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Please enter valid phone number';
          //     }
          //     return null;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     icon: Icon(Icons.calendar_today),
          //     hintText: 'Enter your date of birth',
          //     labelText: 'Dob',
          //   ),
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Please enter valid date';
          //     }
          //     return null;
          //   },
          // ),
          Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState!.validate()) {
                    callTheApi(thisOne);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}