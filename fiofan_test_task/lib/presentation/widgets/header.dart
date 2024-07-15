import 'package:fiofan_test_task/presentation/widgets/menu_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.02,
            child: Row(
              children: [
                SvgPicture.asset('assets/logo.svg'),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.001),
                const Text(
                  "fitofan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const MenuBarItem(image: 'assets/promo.svg', text: 'promo'),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
              const MenuBarItem(image: 'assets/matches.svg', text: 'matches'),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
              const MenuBarItem(image: 'assets/judges.svg', text: 'judges'),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
              const MenuBarItem(image: 'assets/screen.svg', text: 'screen'),
              SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
              const MenuBarItem(image: 'assets/settings.svg', text: 'settings'),
            ],
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
        ],
      ),
    );
  }
}
