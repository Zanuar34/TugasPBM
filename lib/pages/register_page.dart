import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tugas_pbm/pages/login_page.dart';
import '../components/my_textfield.dart';
import '../components/my_button.dart';
import '../components/square_title.dart';


String username = " ";
String password = " ";
class RegisterView extends StatelessWidget {
  RegisterView ({super.key});

// bagian iki, ketoro ??
// nah iki ditaruh luar biar jadi variable global, dan bisa di akses di login_page
// opoo kok kudu ngunu ?
// ben iso di akses neng login_page.dart, nek neng jero class seng iso ngeakses cuma didalam kelas tok
// coba save
// sek tak coba
  // text editing controllers
  final usenameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
// signuser in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),

          //logo
          const Icon(Icons.lock,
          size: 100,
          ),

          const SizedBox(height: 50,),
          //welcome back, you've been missed!
          Text(
            'Welcome Guest! Please fill the form below',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25,),


          // username textfield
          MyTextField(
            controller: usenameController,
            hintText: 'Username',
            obscureText: false,
          ),

          const SizedBox(height: 15,),

          // Email textfield
          MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
          ),

          const SizedBox(height: 15,),

          // password textfield
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),

          const SizedBox(height: 15,),

          // Re-Confirm Password textfield
          MyTextField(
            controller: confirmpasswordController,
            hintText: 'Confirm Password',
            obscureText: true,
          ),

          const SizedBox(height: 50,),


          // Sign Up Button
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom( 
              ),
              onPressed: (){
                String inputusername = usenameController.text;
                String inputpassword = passwordController.text;
                String inputconfirmpassword = confirmpasswordController.text;
                if(inputpassword != inputconfirmpassword) {
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: Text("Invalid Password"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes"),
                          ),
                      ],
                    ),
                  );
                } else {
                  username = inputusername;
                  password = inputpassword;
                  print("Username: $username\nPassword: $password");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage()),
                    );
                }
                // print("Sign Up");
              }, 
            child: Text("Sign Up")),
          )
            ],
          ),
        ),
          ),
        );
  }
}
