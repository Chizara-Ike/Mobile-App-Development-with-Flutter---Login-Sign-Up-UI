import 'package:flutter/material.dart';
import 'package:login_app/components/buttons.dart';
import 'package:login_app/components/mytext_field.dart';
import 'package:login_app/components/tile.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // TEXT EDITING CONTROLLERS
  final usernameController = TextEditingController();
  final emailController = TextEditingController(); // new controller
  final passwordController = TextEditingController();

  void signUserIn() {
    // implement your logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Spotify')),
      body: SafeArea(
        child: SingleChildScrollView( // prevent overflow
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
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
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

                // email field
                MytextField(
                  controller: emailController,
                  hintText: 'E-mail',
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
                  text: 'Create Account',
                ),


                const SizedBox(height: 15),

                // Divider with text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const Expanded(
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
                  children: const [
                    SquareTile(imagePath: 'lib/images/Google.png'),
                    SizedBox(width: 10),
                    SquareTile(imagePath: 'lib/images/Apple-ios.png'),
                  ],
                ),

                const SizedBox(height: 15),

                // Already a member?
                const Text(
                  'Already a member? Log in',
                  style: TextStyle(color: Colors.black87),
                ),

                // const SizedBox(height: 50),
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
// import 'package:login_app/components/tile.dart';
//
// class RegisterPage extends StatelessWidget {
//   RegisterPage({super.key});
//
//   // TEXT EDITING CONTROLLERS
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//   final emailController = TextEditingController();
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
//                 'Create an Account',
//                 style:
//                 TextStyle(color: Colors.black87,
//                     fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
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
//               const SizedBox(height: 10),
//               MytextField(
//                 controller: emailController,
//                 hintText: 'E-mail',
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
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           'Forgot Password?',
//                           style: TextStyle(color: Colors.black87),
//                         ),
//                       ])),
//
//
//               const SizedBox(height: 15,),
//               // login button
//               MyButton(
//                 onTap: signUserIn,
//                 text: 'Create Account',
//               ),
//
//               const SizedBox(height: 15,),
//               // Not a member? Create Account
//               Text(
//                 'Already a member? Log in',
//                 style: TextStyle(color: Colors.white),
//               ),
//
//               const SizedBox(height: 15,),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Row(
//                     children: [
//                       Expanded(
//                           child: Divider(
//                             thickness: 0.5,
//                             color: Colors.grey,
//                       )),
//                       Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Text('Or continue with',
//                             style: TextStyle(color: Colors.black,),)),
//                           Expanded(
//                               child: Divider(
//                                 thickness: 0.5,
//                                 color: Colors.grey,
//                               ))
//               ])),
//               Row(
//                 children: [
//                   SquareTile(imagePath: 'lib/images/Google.png',),
//                   SquareTile(imagePath: 'lib/images/Apple-ios.png',)
//                       // 'lib/images/Google.png',
//                       // 'lib/images/Apple-ios.png'
//               ])])
//         )]),
//         );,
//       );,
//   }
// }
//
