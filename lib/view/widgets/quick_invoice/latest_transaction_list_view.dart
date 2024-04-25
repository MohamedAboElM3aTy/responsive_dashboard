import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/view/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserModel> users = [
    UserModel(
      imageName: AppImages.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
    ),
    UserModel(
        imageName: AppImages.imagesAvatar2,
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com'),
    UserModel(
      imageName: AppImages.imagesAvatar3,
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users
            .map(
              (users) => IntrinsicWidth(
                child: UserInfoListTile(user: users),
              ),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: users.length,
    //     itemBuilder: (ctx, index) => IntrinsicWidth(
    //       child: UserInfoListTile(user: users[index]),
    //     ),
    //   ),
    // );
  }
}
