import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.appbarTitle = '',
  });

  final String appbarTitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
      centerTitle: true,
      title: Text(
        appbarTitle,
        style: const TextStyle(fontFamily: 'BreeSerif'),
      ),
      backgroundColor: Colors.transparent,
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        60,
      );
}
