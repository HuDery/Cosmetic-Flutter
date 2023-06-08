import 'package:beauty/login.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SignUpForm(),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/image/logo.png', // Đường dẫn đến hình ảnh logo của bạn
            width: 200.0,
            height: 200.0,
          ),
        ),
        SizedBox(height: 20.0),
        TextField(
          controller: _fullNameController,
          decoration: InputDecoration(
            labelText: 'Full Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        TextField(
          controller: _phoneController,
          decoration: InputDecoration(
            labelText: 'Phone',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10.0),
        TextField(
          controller: _confirmPasswordController,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: () {
            // Xử lý đăng ký tại đây
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFB3AD9F)),
            fixedSize: MaterialStateProperty.all<Size>(Size(360, 48)),
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(color: Colors.white),
            ),
          ),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Already have an account ?",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            SizedBox(width: 4.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                "Log In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }
}
