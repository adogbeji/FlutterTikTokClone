import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/input_text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Email & Password Controllers
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
              Image.asset(
                'assets/images/tiktok.png',
                width: 200,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Glad to see you',
                style: GoogleFonts.acme(
                  fontSize: 34,
                  color: Colors.grey,
                ),
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
                      ],
                    )
                  : Container(
                      // Show animations
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
