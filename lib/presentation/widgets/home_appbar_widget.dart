import 'package:flutter/material.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class HomeAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: AppTheme.scaffoldBgColor,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: CircleAvatar(
          radius: 22,
          backgroundColor: AppTheme.secondaryColor,
          child: Icon(Icons.menu_rounded, color: Colors.black),
        ),
      ),
      title: Image.asset(ImageRes.logo, width: 100, fit: BoxFit.contain),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(ImageRes.profile),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
