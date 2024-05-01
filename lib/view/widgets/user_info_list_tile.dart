import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.imageName),
          title: Text(
            user.name,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            user.email,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
