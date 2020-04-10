import 'package:flutter/material.dart';

class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
              child: Image.asset("images/face.png",
                  width: 90, height: 90, color: Colors.deepPurple)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "NAME",
                  border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(3.3))),
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter name";
                } else {
                  print("All is good");
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(3.3))),
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter password";
                } else {
                  print("All is good");
                }
              },
            ),
          ),
          //buttons
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      if(_formkey.currentState.validate()){
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text("All is good")));
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    if(_formkey.currentState.validate()){
                      _formkey.currentState.reset();
                    }
                  },
                  child: Text("Clear"),
                )
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(12.0),
          child:Center(child:Text("Hello there")),),
        ],
      ),
    );
  }
}
