import 'package:flutter/material.dart';
import 'package:hfa/components/logo.dart';
import 'package:hfa/components/my_button.dart';
import 'package:hfa/components/my_textfield.dart';
import 'package:hfa/components/square_tile.dart';
import 'package:hfa/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {

    // show loading circle
    showDialog(
      context: context, 
      builder: (context){
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        );  
      },
    );

    // // try sign in
    //   try {
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         email: emailController.text,
    //         password: passwordController.text,
    //     );
    //     // pop the loading circle
    //     Navigator.pop(context);
    //   } on FirebaseAuthException catch (e){
    //     // pop the loading circle
    //     Navigator.pop(context);
    //     // Wrong Email
    //     if (e.code == 'user-not-found') {
    //       // show error to user
    //       wrongEmailMessage();
    //     }
    //
    //     //Wrong Password
    //     else if (e.code == 'wrong-password') {
    //       // show error to user
    //       wrongPasswordMessage();
    //     }
    //   }
  }

  // Wrong Email pop up

  // void wrongEmailMessage(){
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text('Incorrect Email!'),
  //       );
  //     },
  //   );
  // }
  //
  // // Wrong Password pop up
  //
  // void wrongPasswordMessage(){
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text('Incorrect Password!'),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column (
            children: [
              const SizedBox(height: 50),

              //logo
              Image.asset('lib/images/HFA.png', height: 200,),

              const SizedBox(height: 25),

              //Health For All
              const Text(
                "Health For All",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
          
              const SizedBox(height: 25),

              //Welcome
              const Text(
                "Chào mừng!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //Login to continue
              const Text(
                "Xin hãy đăng nhập để tiếp tục",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
          
              const SizedBox(height: 100),

              //google sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(
                      onTap: () => AuthService().signInWithGoogle(),
                      imagePath: 'lib/images/google.png'
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //apple button
                  SquareTile(
                      onTap: () {},
                      imagePath: 'lib/images/apple.png'
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}