// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_textfield.dart';
import 'package:login/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // user sign in method
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),

                //logo
                Icon(
                  Icons.lock,
                  size: 100,
                ),

                SizedBox(height: 50),
                //welcome back, you've been missed!

                Text(
                  'welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 25),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //password textfield

                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: 10),

                //forgot password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                //sign in button

                MyButton(
                  onTap: signUserIn,
                ),

                SizedBox(height: 50),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                // google + apple sign in button

                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagePath: 'lib/images/google.png'),
                    
                    SizedBox(width: 10,),
                    //apple button
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),
                // not a member ? register now

                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(
                        'Not a member?',
                        style:TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(width: 4,),
                      Text(
                        'Register Now?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      )

                  ],
                )
              ],
            ),
          ),
        ));
  }
}
