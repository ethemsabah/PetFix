import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: SizedBox(
        width: 105,
        height: 28,
        child: Image.asset('model/assets/petpix.png'),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings), // Ayarlar butonu
        color: Colors.black,
      ),
      actions: [],
      backgroundColor: const Color(0xffFAFAFA),
    );
  }
}
