import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(Assets.imagesCardBackground)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xff4eb7f2),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
              title:  Text(
                'Card Name',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white
                ),
              ),
              subtitle:  const Text(
                'Karem Alsayed',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0915 4555 8695 4578',
                    style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
                  ),
                  
                Text(
                '15/25 - 255',
                style: AppStyles.styleRegular16.copyWith(color: Colors.white),
              ),
                ],
              ),
            ),
            
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}
