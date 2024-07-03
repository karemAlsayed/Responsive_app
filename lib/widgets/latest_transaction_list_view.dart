import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'karem alsayed',
        subtitle: 'hjsksj@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'mohamed ali',
        subtitle: 'kahsyyb@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'saied mohammed',
        subtitle: 'jjhgfdsds@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,

      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));
          }),
    );
  }
}
