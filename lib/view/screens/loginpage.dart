import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nuit_info/utlis/colors.dart';
import 'package:nuit_info/utlis/styles.dart';
import 'package:nuit_info/view/widgets/primary_butt.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Replace 'YOUR_API_ENDPOINT' with the actual endpoint for authentication
    const String apiEndpoint = 'YOUR_API_ENDPOINT';

    try {
      final response = await http.post(
        Uri.parse(apiEndpoint),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': username, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Successful login
        print('Login successful');
        // You can navigate to the next screen or perform other actions here
      } else {
        // Failed login
        print('Login failed');
        // You can show an error message or perform other actions here
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle error, e.g., show an error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppColors.cBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
             const  SizedBox(height: 250) ,
              SizedBox( 
                height: 50, 
                width: 250,
                child: TextField( 
                  style: Styles().h1TextStyle(AppColors.cScaffoldColor),
                  controller: _usernameController,
                  decoration:   const InputDecoration(
                    labelText: 'Username' ,
                     border: OutlineInputBorder(  
                   
                      
                     ) 
                    ), 
                  
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                   height: 50, 
                width: 250,
                child: TextField( 
                  style: Styles().h1TextStyle(AppColors.cScaffoldColor),
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration( 
                    labelText: 'Password' , 
                    border: OutlineInputBorder() 
                    ),
                ),
              ),
              const SizedBox(height: 32.0),
                Expanded(
                      child: SizedBox(
                        height: 150,
                        width: 200,
                        child: PrimaryButton( 
                           text: 'Login',
                          onPressed: () { 
                            _login() ;
                          }),
                      ),
                    )
                  ],
            
          ),
        ),
      ),
    );
  }
}