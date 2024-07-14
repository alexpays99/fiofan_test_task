import 'package:fiofan_test_task/presentation/widgets/custom_acttion_button.dart';
import 'package:fiofan_test_task/presentation/widgets/menu_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/custom_navigation_button.dart';
import '../widgets/player_card.dart';

class ScoreboardScreen extends StatelessWidget {
  const ScoreboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Expanded(
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
                    const MenuBarItem(
                        image: 'assets/matches.svg', text: 'matches'),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                    const MenuBarItem(
                        image: 'assets/judges.svg', text: 'judges'),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                    const MenuBarItem(
                        image: 'assets/screen.svg', text: 'screen'),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
                    const MenuBarItem(
                        image: 'assets/settings.svg', text: 'settings'),
                  ],
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const CustomNavigationButton(
                  text: 'Previous',
                  icon: Icons.arrow_back,
                  isNtext: false,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8.0),
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).width * 0.05,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 27, 27, 27),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Text(
                                'Previous',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.01,
                                              // height: double.infinity,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[800],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                '${index + 1}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 5.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.01),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    // width: double.infinity,

                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF123897),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Zhou Emma',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 5.sp,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      8.0,
                                                                  vertical:
                                                                      4.0),
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Colors.orange,
                                                            gradient:
                                                                const LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFFEA9C0F),
                                                                Color(
                                                                    0xFFED6B0E),
                                                              ],
                                                              begin: Alignment
                                                                  .topLeft,
                                                              end: Alignment
                                                                  .bottomRight,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2),
                                                          ),
                                                          child: Text(
                                                            'Winner',
                                                            style: TextStyle(
                                                              fontSize: 3.sp,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    // width: double.infinity,

                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFFA80F2A),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Zhou Emma',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 5.sp,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        const SizedBox.shrink(),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.01),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          height: 0.5,
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).width * 0.05,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 27, 27, 27),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: CustomActionButton(text: 'Show on TV'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
              ],
            ),
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
                Expanded(
                  child: Column(
                    children: [
                      const PlayerCard(
                        name: 'Shirin Shirinov',
                        imageUrl: 'assets/shirin_shirinov.svg',
                        team: 'Poomsae Ukrainian Federation',
                        coach: 'Чебан (Cheban) B.',
                        backgroundColor: Colors.blue,
                      ),
                      const PlayerCard(
                        name: 'Shirin Shirinov',
                        imageUrl: 'assets/shirin_shirinov_1.svg',
                        team: 'Poomsae Ukrainian Federation',
                        coach: 'Чебан (Cheban) B.',
                        backgroundColor: Colors.red,
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('This match is active'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Save results'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Show result on screen'),
                          ),
                          const Text(
                            'Round 1  01:29',
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const CustomNavigationButton(
                  text: 'Next',
                  icon: Icons.arrow_forward,
                  isNtext: true,
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(8.0),
                              width: MediaQuery.sizeOf(context).width,
                              height: MediaQuery.sizeOf(context).width * 0.05,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 27, 27, 27),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.01,
                                              // height: double.infinity,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[800],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Text(
                                                '${index + 1}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 5.sp,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.01),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    // width: double.infinity,

                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF123897),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Text(
                                                      'Zhou Emma',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 5.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                            context)
                                                        .width,
                                                    // width: double.infinity,

                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFFA80F2A),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Zhou Emma',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 5.sp,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        const SizedBox.shrink(),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.01),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          height: 0.5,
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
              ],
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Column(
          //     children: [
          //       const CustomNavigationButton(
          //         text: 'Next',
          //         icon: Icons.arrow_forward,
          //         isNtext: true,
          //       ),
          //       Expanded(
          //         child: ListView.builder(
          //           itemCount: 5,
          //           itemBuilder: (context, index) {
          //             return ListTile(
          //               leading: SvgPicture.asset('assets/promo.svg',
          //                   width: 40, height: 40),
          //               title: const Text('Zhou Emma',
          //                   style: TextStyle(color: Colors.white)),
          //               subtitle: const Text('Winner',
          //                   style: TextStyle(color: Colors.yellow)),
          //             );
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
        ],
      ),
    );
  }
}
