import 'package:fiofan_test_task/presentation/widgets/custom_acttion_button.dart';
import 'package:fiofan_test_task/presentation/widgets/section_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#5 Day 1, Dojang 1, №1 All. Poomsae',
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
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
                          ),
                          const PlayerCard(
                            name: 'Shirin Shirinov',
                            imageUrl: 'assets/shirin_shirinov_1.png',
                            team: 'Poomsae Ukrainian Federation',
                            coach: 'Чебан (Cheban) B.',
                            backgroundColor: Colors.red,
                          ),
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
                                        color: Colors.white.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        '✔️ This match is active',
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
                                        color: Colors.white.withOpacity(0.3),
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
                                        color: Colors.white.withOpacity(0.3),
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
                                    width: MediaQuery.sizeOf(context).width / 5,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0, vertical: 4.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      'Round 1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 5.sp,
                                      ),
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
          // Expanded(
          //   flex: 3,
          //   child: Column(
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.all(8.0),
          //         decoration: BoxDecoration(
          //           color: Colors.white.withOpacity(0.5),
          //           borderRadius: const BorderRadius.all(Radius.circular(10)),
          //         ),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text(
          //               '#5 Day 1, Dojang 1, №1 All. Poomsae',
          //               style: TextStyle(color: Colors.white.withOpacity(0.5)),
          //             ),
          //           ],
          //         ),
          //       ),
          //       SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
          //       Expanded(
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color: Colors.grey[900],
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Column(
          //               children: [
          //                 const PlayerCard(
          //                   name: 'Shirin Shirinov',
          //                   imageUrl: 'assets/shirin_shirinov.png',
          //                   team: 'Poomsae Ukrainian Federation',
          //                   coach: 'Чебан (Cheban) B.',
          //                   backgroundColor: Colors.blue,
          //                 ),
          //                 const PlayerCard(
          //                   name: 'Shirin Shirinov',
          //                   imageUrl: 'assets/shirin_shirinov_1.png',
          //                   team: 'Poomsae Ukrainian Federation',
          //                   coach: 'Чебан (Cheban) B.',
          //                   backgroundColor: Colors.red,
          //                 ),
          //                 // const Spacer(),
          //                 Row(
          //                   children: [
          //                     Column(
          //                       children: [
          //                         SizedBox(
          //                           width: MediaQuery.sizeOf(context).width / 5,
          //                           child: const CustomActionButton(
          //                               text: '✔️ This match is active'),
          //                         ),
          //                         SizedBox(
          //                             height: MediaQuery.sizeOf(context).width *
          //                                 0.01),
          //                         SizedBox(
          //                           width: MediaQuery.sizeOf(context).width / 5,
          //                           child: const CustomActionButton(
          //                               text: 'Save results'),
          //                         ),
          //                         SizedBox(
          //                             height: MediaQuery.sizeOf(context).width *
          //                                 0.01),
          //                         SizedBox(
          //                           width: MediaQuery.sizeOf(context).width / 5,
          //                           child: const CustomActionButton(
          //                               text: 'Show result on screen'),
          //                         ),
          //                       ],
          //                     ),
          //                     SizedBox(
          //                         width:
          //                             MediaQuery.sizeOf(context).width * 0.01),
          //                     Expanded(
          //                       child: SizedBox(
          //                         width: MediaQuery.sizeOf(context).width,
          //                         // height: MediaQuery.sizeOf(context).width / 4,
          //                         child: const CustomActionButton(
          //                             text: 'Show on TV'),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //       SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
          //     ],
          //   ),
          // ),
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
