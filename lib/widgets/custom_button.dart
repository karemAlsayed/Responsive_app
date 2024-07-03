import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundcolo, this.color});
  final Color? backgroundcolo,color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor:backgroundcolo ?? const Color(0xff4db7f2)  ,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            'Send Money',
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
