import 'package:dicoding_final_timer/component/view_component.dart';
import 'package:dicoding_final_timer/screen/login_screen.dart';
import 'package:dicoding_final_timer/screen/register_screen.dart';
import 'package:dicoding_final_timer/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Measure ', style: GoogleFonts.montserrat(fontSize: 50, color: customYellow)),
                    TextSpan(text: 'time ', style: GoogleFonts.montserrat(fontSize: 50, color: Colors.white, fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'of your ',
                        style: GoogleFonts.montserrat(fontSize: 50, color: Colors.white, decoration: TextDecoration.underline, fontWeight: FontWeight.w500)),
                    TextSpan(text: 'Activities ', style: GoogleFonts.montserrat(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Container(
                child: Text('Measure the time of any situation, like sport, cooking, games, education, etc',
                    style: GoogleFonts.montserrat(fontSize: 16, color: customGrey, fontWeight: FontWeight.w500)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(fireClockImage, color: customYellow),
              ),
              Expanded(child: Container()),
              CustomFilledButton(
                btnText: 'Sign into your account',
                btnFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
              ),
              CustomBorderButton(
                  btnText: 'Sign up for free',
                  btnFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
