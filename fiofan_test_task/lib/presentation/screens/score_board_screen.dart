import 'package:fiofan_test_task/presentation/widgets/section_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/header.dart';
import '../widgets/player_card.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [Header()],
      ),
      body: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
          const SectionListWidget(
            title: 'Previous',
            hasInnerButton: true,
            hasBottomButton: true,
            isNtext: false,
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.1),
                      )),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Text(
                          '#5',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 6.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
                      Text(
                        'Day 1, Dojang 1, №1 All. Poomsae',
                        // 'Previous',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 6.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const PlayerCard(
                            name: 'Shirin Shirinov',
                            imageUrl: 'assets/shirin_shirinov.png',
                            team: 'Poomsae Ukrainian Federation',
                            coach: 'Чебан (Cheban) B.',
                            backgroundColor: Colors.blue,
                            colors: [
                              Color(0xFF0C2052),
                              Color(0xFF163692),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02),
                          const PlayerCard(
                            name: 'Shirin Shirinov',
                            imageUrl: 'assets/shirin_shirinov_1.png',
                            team: 'Poomsae Ukrainian Federation',
                            coach: 'Чебан (Cheban) B.',
                            backgroundColor: Colors.red,
                            colors: [
                              Color(0xFF460E1A),
                              Color(0xFFA20F29),
                            ],
                          ),
                          SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.02),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.sizeOf(context).width / 5,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            70, 0, 181, 124),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        '✔️ This match is active',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.2),
                                          fontSize: 5.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.01),
                                    Container(
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.sizeOf(context).width / 5,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFF00B57C),
                                            Color(0xFF1C786D),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'Save results',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 5.sp,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.01),
                                    Container(
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.sizeOf(context).width / 5,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0, vertical: 12.0),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFF00B57C),
                                            Color(0xFF1C786D),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'Show result on screen',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 5.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.01),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEBA00F),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.01),
                                        Text(
                                          'Round 1',
                                          style: TextStyle(
                                            color: const Color(0xFF761D11),
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '01:29',
                                          style: TextStyle(
                                            color: const Color(0xFF761D11),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.01),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
          const SectionListWidget(
            title: 'Next',
            hasInnerButton: false,
            hasBottomButton: false,
            isNtext: true,
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
        ],
      ),
    );
  }
}
