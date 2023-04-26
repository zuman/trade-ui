import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/components/square_tile.dart';
import 'package:ui/components/submit_button.dart';
import 'package:ui/components/trade_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final tradeIDController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: 500,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage("assets/logo-dark.png"),
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("TRADETAJ",
                              style: GoogleFonts.josefinSlab(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Business. Smart & Simple.",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TradeTextField(
                        controller: tradeIDController, labelText: "Trade ID"),
                    const SizedBox(
                      height: 20,
                    ),
                    TradeTextField(
                        controller: usernameController,
                        labelText: "Username or Email"),
                    const SizedBox(
                      height: 20,
                    ),
                    TradeTextField(
                      controller: passwordController,
                      labelText: "Password",
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SubmitButton(
                      text: "Sign In",
                      onTap: signUserIn,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SquareTile(imagePath: 'assets/google.png'),
                        SizedBox(
                          width: 25,
                        ),
                        SquareTile(imagePath: 'assets/apple.png')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
