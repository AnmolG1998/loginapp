import 'package:flutter/material.dart';
import 'package:login/ui/CustomLoginForm.dart';
void main()=> runApp(Login());
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle="Login";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        backgroundColor: Colors.blueGrey,
        body: CustomLoginForm(),
      ),
    );
  }
}
