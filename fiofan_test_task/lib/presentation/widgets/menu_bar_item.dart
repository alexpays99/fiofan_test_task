import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuBarItem extends StatelessWidget {
  const MenuBarItem({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            image,
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width * 0.02,
            height: MediaQuery.sizeOf(context).width * 0.02,
          ),
          onPressed: () {},
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 5.sp,
            fontWeight: FontWeight.w200,
          ),
        )
      ],
    );
  }
}
