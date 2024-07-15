import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({
    super.key,
    required this.text,
    required this.icon,
    required this.isNtext,
  });

  final String text;
  final IconData icon;
  final bool isNtext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: isNtext
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 5.sp,
                    ),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                  Icon(icon, size: 5.sp, color: Colors.white),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, size: 5.sp, color: Colors.white),
                  SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                  Text(
                    text,
                    // 'Previous',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 5.sp,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
