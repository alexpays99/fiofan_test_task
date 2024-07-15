import 'package:fiofan_test_task/presentation/widgets/custom_acttion_button.dart';
import 'package:fiofan_test_task/presentation/widgets/custom_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionListWidget extends StatelessWidget {
  const SectionListWidget({
    super.key,
    required this.title,
    this.hasInnerButton = false,
    this.hasBottomButton = false,
    this.isNtext = false,
  });
  final String title;
  final bool hasInnerButton;
  final bool hasBottomButton;
  final bool isNtext;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          CustomNavigationButton(
            text: title,
            icon: isNtext ? Icons.arrow_forward : Icons.arrow_back,
            isNtext: isNtext,
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
                          title,
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
                                  IntrinsicHeight(
                                    child: Row(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.03,
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
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.01),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                        .width,
                                                // width: double.infinity,

                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFF123897),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
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
                                                    hasInnerButton
                                                        ? Container(
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
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          )
                                                        : const SizedBox
                                                            .shrink(),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                        .width,
                                                // width: double.infinity,

                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4.0,
                                                        vertical: 4.0),
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFA80F2A),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
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
                                  ),
                                  SizedBox(
                                      height: MediaQuery.sizeOf(context).width *
                                          0.01),
                                  Container(
                                    width: MediaQuery.sizeOf(context).width,
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
                  hasBottomButton
                      ? Container(
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
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),
        ],
      ),
    );
  }
}
