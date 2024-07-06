import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomeDEtails extends StatelessWidget {
  const IncomeDEtails({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xff208bc7), title: 'Design service', value: '%40'),
    ItemDetailsModel(
        color: Color(0xff4db7f2), title: 'Design product', value: '%25'),
    ItemDetailsModel(
        color: Color(0xff064060), title: 'Product royality', value: '%10'),
    ItemDetailsModel(color: Color(0xffe2decd), title: 'Other', value: '%25'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return ItemDetails(itemDetailsModel: items[index]);
    });
  }
}
