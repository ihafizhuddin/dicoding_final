import 'package:dicoding_final_timer/component/view_component.dart';
import 'package:dicoding_final_timer/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'REGISTER ', style: GoogleFonts.montserrat(fontSize: 50, color: customYellow)),
                        ],
                      ),
                    ),
                    Container(
                      child: Text('welcome, new user!', style: GoogleFonts.montserrat(fontSize: 16, color: customGrey, fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 50),
                      child: Image.asset(
                        fireClockImage,
                        color: customYellow,
                        height: 150,
                      ),
                    ),
                    const CustomTextField(hintTxt: 'username'),
                    const SizedBox(height: 30),
                    const CustomPasswordTextField(hintTxt: 'password'),
                    const SizedBox(height: 30),
                    const CustomPasswordTextField(hintTxt: 'confirm password'),
                    // Expanded(child: Container()),
                    const SizedBox(height: 5),
                    CustomFilledButton(btnText: 'Register New Account', btnFunction: () {}),
                    CustomBorderButton(btnText: 'Go to Sign in instead', btnFunction: () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
