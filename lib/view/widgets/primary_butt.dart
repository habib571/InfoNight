import 'package:flutter/material.dart';
import 'package:nuit_info/utlis/app_dimens.dart';
import 'package:nuit_info/utlis/app_fonts.dart';
import 'package:nuit_info/utlis/colors.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key,  
    this.borderColor =  AppColors.cAccentColor,
    this.buttonColor = AppColors.cAccentColor,
    required this.onPressed,
    this.text = '',
    this.btnTxtStyle =  const TextStyle(
        color: AppColors.cPrimaryColor,
        fontSize: AppDimens.h2Size,
        fontFamily: AppFonts.robotoRegular,
        fontWeight: FontWeight.w400,
        letterSpacing: AppDimens.letterSpace
    ),
  });

  final Color buttonColor;
  final Color borderColor ;
  final String text;
  final TextStyle btnTxtStyle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: MaterialButton( 
            color: buttonColor,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor ),
                borderRadius: BorderRadius.circular(12)
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: btnTxtStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
