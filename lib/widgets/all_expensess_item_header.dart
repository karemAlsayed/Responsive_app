import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image, this.imageBackgroundColor, this.imageColor});
  final String image;
  final Color? imageBackgroundColor,imageColor;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          

          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                
                decoration:  ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackgroundColor?? const Color(0xFFFAFAFA),
                ),
                child: Center(child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(imageColor??const Color(0xFF4EB7F2), BlendMode.srcIn),)),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor==null ? const Color(0xFF064061):Colors.white,
          ),
        ),
      ],
    );
  }
}
