import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import 'package:tiktok_clone/widgets/input_text_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Name, Email & Password Controllers
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              
              Text(
                'Create Account',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'To get Started Now!',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
              ),
              
              // Profile Avatar
              GestureDetector(
                onTap: () {},
              ),

              const SizedBox(
                height: 30,
              ),

              // EMAIL INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InputTextWidget(
                  textEditingController: emailTextEditingController,
                  labelString: 'Email',
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // PASSWORD INPUT FIELD
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: InputTextWidget(
                  textEditingController: passwordTextEditingController,
                  labelString: 'Password',
                  iconData: Icons.lock_outline,
                  isObscure: false,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              // LOGIN BUTTON
              showProgressBar == false
                  ? Column(
                      children: [
                        // Login Button
                        Container(
                          width: MediaQuery.of(context).size.width - 38,
                          height: 54,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                showProgressBar = true;
                              });

                              // Log in user
                            },
                            child: const Center(
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        // Sign Up Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Send User to sign up screen
                                Get.to(const RegistrationScreen());
                              },
                              child: const Text('Sign Up Now', style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Container(
                      // Show animations
                      child: const SimpleCircularProgressBar(
                         progressColors: [
                          Colors.green,
                          Colors.blueAccent,
                          Colors.red,
                          Colors.amber,
                          Colors.purpleAccent,
                         ],
                         animationDuration: 3,
                         backColor: Colors.white38,
                      ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}