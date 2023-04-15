import 'package:flutter/material.dart';
import 'package:tugas_pbm/pages/dashboard_page.dart';
import 'package:tugas_pbm/pages/register_page.dart';
import '../components/my_textfield.dart';
import '../components/my_button.dart';
import '../components/square_title.dart';


class LoginPage extends StatelessWidget {
  LoginPage ({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  
// signuser in method
  void signUserIn() {}

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
            'Welcome back you\'ve been missed!',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25,),


          // username textfield
          MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          const SizedBox(height: 10,),

          // password textfield
          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),

          const SizedBox(height: 10,),
          // forgot password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[600]),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20,), 

          // sign in button
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom( 
              ),
              onPressed: (){
                // halo 
                // sek sek tak delok e
                // okee
                // buka register, aku pindah kunu
                print(username);
                print(password);

                if(usernameController.text == username &&
                passwordController.text == password) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BMI()));
                }

                
                // print("Sign In");
              }, 
            child: Text("Sign In")),
          ),
          const SizedBox(height: 20,),
          // not a member? register now
          SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have any account ?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterView()),
                      );
                      ;
                    },
                    child: Text("Sign Up",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              )
          ],
          ),
        ),
      ),
    );
  }
}