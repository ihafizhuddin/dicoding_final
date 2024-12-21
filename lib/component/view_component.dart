import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../style.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({required this.btnText, required this.btnFunction, super.key});
  final String btnText;
  final VoidCallback btnFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Align(
        child: SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: customYellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: btnFunction,
            child: Text(
              btnText,
              style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({required this.btnText, required this.btnFunction, super.key});
  final String btnText;
  final VoidCallback btnFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Align(
        child: SizedBox(
          width: double.maxFinite,
          child: OutlinedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              // backgroundColor: customYellow,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: btnFunction,
            child: Text(
              btnText,
              style: GoogleFonts.montserrat(fontSize: 16, color: customYellow, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintTxt, super.key});
  final String hintTxt;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: GoogleFonts.montserrat(
          color: customGrey,
          fontSize: 16,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 4,
            color: customYellow,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: customYellow,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 4,
            color: customYellow,
          ),
        ),
      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({required this.hintTxt, super.key});
  final String hintTxt;

  @override
  State<CustomPasswordTextField> createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  late bool isObscured;
  @override
  void initState() {
    super.initState();
    isObscured = true;
  }

  void switchObscureState() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  void setObscureState(bool newState) {
    setState(() {
      isObscured = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscured,
      obscuringCharacter: '●',
      style: GoogleFonts.montserrat(
        color: customYellow,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: widget.hintTxt,
        suffixIcon: IconButton(
          icon: Icon(
            // Icons.visibility,
            !isObscured ? Icons.visibility : Icons.visibility_off,
            color: customYellow,
          ),
          onPressed: () {
            switchObscureState();
          },
        ),
        hintStyle: GoogleFonts.montserrat(
          color: customGrey,
          fontSize: 16,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 4,
            color: customYellow,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: customYellow,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 4,
            color: customYellow,
          ),
        ),
      ),
    );
  }
}

class CustomStopwatchText extends StatelessWidget {
  const CustomStopwatchText({required this.timeText, required this.timeTypeText, required this.timeTextColor, super.key});
  final timeText;
  final timeTextColor;
  final timeTypeText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Text(
          '$timeText',
          style: GoogleFonts.roboto(
            color: timeTextColor,
            fontSize: 150,
          ),
        ),
        Text(
          ' $timeTypeText',
          style: GoogleFonts.roboto(
            color: customGrey,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}

class CustomSquareButton extends StatelessWidget {
  const CustomSquareButton({required this.icon, required this.function, super.key});

  final IconData icon;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    double boxSize = 150;
    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: customYellow),
        child: Icon(
          icon,
          color: Colors.black,
          size: 50,
        ),
        onPressed: function,
      ),
    );
  }
}

class CustomSquareBorderButton extends StatelessWidget {
  const CustomSquareBorderButton({required this.icon, required this.function, super.key});

  final IconData icon;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    double boxSize = 150;
    return SizedBox(
      width: boxSize,
      height: boxSize,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: customYellow, width: 5),
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.transparent,
        ),
        child: Icon(
          icon,
          color: customYellow,
          size: 50,
        ),
        onPressed: function,
      ),
    );
  }
}
