import 'package:flutter/material.dart';
import 'package:nav_btn/src/colors.dart';
import 'package:nav_btn/src/local_helper.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? textColor;
  final Color? backgroundColor;
  final VoidCallback? buttonFunction;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomButton({
    required this.buttonText,
    this.buttonFunction,
    this.fontSize,
    this.fontWeight,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w, right: 4.w),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? AppColors.primaryBlue1Color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: backgroundColor ?? AppColors.primaryBlue1Color,
              ),
            ),
          ),
        ),
        onPressed: buttonFunction!,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: GoogleFonts.inter(
              fontSize: fontSize ?? LocalHelper.getFontSize(16),
              fontStyle: FontStyle.normal,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: textColor ?? AppColors.primaryWight1Color,
            ),
          ),
        ),
      ),
    );
  }
}
