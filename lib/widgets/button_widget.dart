import '../utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;
  ButtonWidget({
     this.label,
     this.backgroundColor,
     this.fontColor,
     this.borderColor,
     this.onTap,
  });

  ButtonWidget.gameTypeButton1({String label, VoidCallback onTap})
      : this.backgroundColor = AppColors.gameTypeButton1,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.onTap = onTap,
        this.label = label;

  ButtonWidget.gameTypeButton2({String label, VoidCallback onTap})
      : this.backgroundColor = AppColors.gameTypeButton2,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.onTap = onTap,
        this.label = label;

  ButtonWidget.gameTypeButton3({String label, VoidCallback onTap})
      : this.backgroundColor = AppColors.gameTypeButton3,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.onTap = onTap,
        this.label = label;
  
  ButtonWidget.gameTypeButton4({String label, VoidCallback onTap})
      : this.backgroundColor = AppColors.gameTypeButton4,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.onTap = onTap,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: borderColor),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
