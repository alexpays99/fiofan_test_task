import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        ),
        foregroundColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.5)),
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.5)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: isNtext
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                Icon(icon, size: 20, color: Colors.white),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 20, color: Colors.white),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                Text(
                  text,
                  // 'Previous',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
              ],
            ),
    );
  }
}
