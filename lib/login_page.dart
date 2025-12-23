import 'package:flutter/material.dart';
import 'package:login_app/components/buttons.dart';
import 'package:login_app/components/mytext_field.dart';
import 'package:login_app/components/tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // TEXT EDITING CONTROLLERS
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    // implement login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Spotify')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                // logo
                Image.asset(
                  'lib/images/Spotify-logo.png',
                  width: 500,
                  height: 100,
                ),

                const SizedBox(height: 25),

                const Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 50,
                  ),
                ),

                const SizedBox(height: 50),

                // username field
                MytextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password field
                MytextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 20),

                // Forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // login button
                MyButton(
                  onTap: signUserIn,
                  text: 'Log in',
                ),


                const SizedBox(height: 15),

                // Divider with text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // Social login tiles
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'lib/images/Google.png'),
                    const SizedBox(width: 10),
                    SquareTile(imagePath: 'lib/images/Apple-ios.png'),
                  ],
                ),

                const SizedBox(height: 20),

                // Not a member? Create Account
                const Text(
                  'Not a member? Create Account',
                  style: TextStyle(color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:login_app/components/buttons.dart';
// import 'package:login_app/components/mytext_field.dart';
//
// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//
//   // TEXT EDITING CONTROLLERS
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   void signUserIn(){
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//
//       appBar: AppBar(title: const Text('Spotify')),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               const SizedBox(height: 50),
//
//               // logo
//               Image.asset(
//                 'lib/images/Spotify-logo.png',
//                 width: 500 ,
//                 height: 100,
//               ),
//               // const Icon(Icons.lock, size: 70,),
//
//               const SizedBox(height: 25),
//
//               const Text(
//                 'Welcome!',
//                 style:
//                 TextStyle(color: Colors.black87,
//                     fontSize: 50),
//               ),
//
//               const SizedBox(height: 50),
//               // username field
//               MytextField(
//                 controller: usernameController,
//                 hintText: 'Username',
//                 obscureText: false,
//               ),
//
//               // password field
//               const SizedBox(height: 10),
//               MytextField(
//                 controller: passwordController,
//                 hintText: 'Password',
//                 obscureText: true,
//               ),
//
//
//               const SizedBox(height: 20,),
//               // Forgot password?
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       'Forgot Password?',
//                       style: TextStyle(color: Colors.white),
//                   ),
//                 ])),
//
//
//               const SizedBox(height: 15,),
//               // login button
//               MyButton(
//                 onTap: signUserIn,
//                 text: 'Log in',
//               ),
//
//               const SizedBox(height: 15,),
//               // Not a member? Create Account
//               Text(
//                 'Not a member? Create Account',
//                 style: TextStyle(color: Colors.white),
//               ),
//
//               const SizedBox(height: 15,),
//               Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Row(
//                   children: [
//                     Expanded(child: Divider(
//                       thickness: 0.5,
//                         color: Colors.grey,
//                     )),
//                     Text('Or continue with',
//                     style: TextStyle(color: Colors.black,),),
//                     Expanded(child: Divider(
//                       thickness: 0.5,
//                       color: Colors.grey,
//                     ))
//                   ]
//         ),
//               )],
//             const SizedBox(height: 10),
//
//             // Social login tiles
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SquareTile(imagePath: 'lib/images/Google.png'),
//                 const SizedBox(width: 10),
//                 SquareTile(imagePath: 'lib/images/Apple-ios.png'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
