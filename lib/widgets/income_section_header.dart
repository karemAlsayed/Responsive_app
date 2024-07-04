


import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20
              .copyWith(color: const Color(0xff064060)),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
            ),
          ),
          child: Row(
            
            
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16.copyWith(
                  color: const Color(0xff064060),
                ),
                
              ),
              const SizedBox(width: 16,),
              Transform.rotate(
                angle:- 1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              )
    
            ],
          ),
        ),
    
      ],
    );
  }
}
