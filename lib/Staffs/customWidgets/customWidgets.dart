import 'package:cloudi5techonologyattendanceapp/Staffs/customWidgets/themeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class dmSansText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final FontWeight weight;
  final Color color;
  final double size;

  const dmSansText({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.weight,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.dmSans(
        fontWeight: weight,
        color: color,
        fontSize: size,
      ),
    );
  }
}

class InterText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final FontWeight weight;
  final Color color;
  final double size;

  const InterText({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.weight,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontWeight: weight,
        color: color,
        fontSize: size,
      ),
    );
  }
}

class ColorText extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign textAlign;
  final FontWeight weight;

  const ColorText({
    Key? key,
    required this.text,
    required this.size,
    required this.weight,
    required this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradientButtonColor1.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.inter(
          fontSize: size,
          fontWeight: weight,
          color: whiteColor,
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final String hinttext;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.hinttext,
    required this.controller,
    required this.validator,
    required this.inputFormatters,
    required this.keyboardType,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        controller: widget.controller,
        autofocus: true,
        cursorHeight: 17,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: whiteColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: whiteColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: widget.hinttext,
          hintStyle: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String text;
  final double height;
  final double widht;
  final VoidCallback onPressed;

  const GradientButton(
      {super.key,
      required this.text,
      required this.height,
      required this.widht,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradientButtonColor1,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          fixedSize: Size(widht, height),
        ),
        onPressed: onPressed,
        child: dmSansText(
          textAlign: TextAlign.center,
          text: text,
          color: whiteColor,
          weight: FontWeight.w700,
          size: 16,
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient gradient;

  const GradientIcon(this.icon, {required this.size, required this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Icon(
        icon,
        size: size,
        color: whiteColor,
      ),
    );
  }
}

class Custom_Container extends StatelessWidget {
  final String text;
  final IconData icon;
  const Custom_Container({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF34346D).withOpacity(.1),
                      Color(0xFFB6465A).withOpacity(.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child:
                  GradientIcon(icon, size: 12, gradient: gradientButtonColor1),
            ),
            const SizedBox(
              width: 12,
            ),
            dmSansText(
                text: text,
                textAlign: TextAlign.center,
                weight: FontWeight.w500,
                color: const Color(0xff3C3C3C),
                size: 12),
          ],
        ),
        const GradientIcon(Icons.arrow_forward_ios,
            size: 20, gradient: gradientButtonColor1),
      ],
    );
  }
}

class TimeSheetContainer extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  const TimeSheetContainer(
      {super.key,
      required this.color,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 28,
          width: 28,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(2)),
          child: Center(
            child: dmSansText(
                textAlign: TextAlign.center,
                text: text1,
                color: whiteColor,
                weight: FontWeight.w400,
                size: 12),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        dmSansText(
            textAlign: TextAlign.center,
            text: text2,
            color: baseTextColor,
            weight: FontWeight.w400,
            size: 12),
      ],
    );
  }
}
