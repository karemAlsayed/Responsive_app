import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
   const AllExpensessItemListView({super.key});

  static final items = [
    const AllExpensessItemModel(
        price: r'$20,129',
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022'),
    const AllExpensessItemModel(
        price: r'$20,129',
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022'),
    const AllExpensessItemModel(
        price: r'$20,129',
        image: Assets.imagesExpenses,
        title: 'Expense',
        date: 'April 2022'),
  ];

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensessItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                onTap: () {
                updateIndex(index);
              },
                child: AllExpensessItem(
                            itemModel: item,
                            isSelected: selectedIndex == index,
                          ),
              ));
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
