import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/view/widgets/drawer/drawer_item.dart';

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  int activeIndex = 0;

  final List<DrawerItemModel> drawerItemsList = const [
    DrawerItemModel(
      title: 'Dashboard',
      imageName: AppImages.imagesDashboard,
    ),
    DrawerItemModel(
      imageName: AppImages.imagesMyTransactions,
      title: 'My Transactions',
    ),
    DrawerItemModel(
      imageName: AppImages.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      imageName: AppImages.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      imageName: AppImages.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];

  // final List<DrawerItemModel> bottomDrawerList = const [
  //   DrawerItemModel(
  //     imageName: AppImages.imagesSettings,
  //     title: 'Settings system',
  //   ),
  //   DrawerItemModel(
  //     imageName: AppImages.imagesLogout,
  //     title: 'Logout Account',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemsList.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () => setState(() {
          if (activeIndex != index) {
            activeIndex = index;
          }
        }),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(
            drawerItemModel: drawerItemsList[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
