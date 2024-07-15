import 'package:fiofan_test_task/presentation/widgets/section_list_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/center_section.dart';
import '../widgets/header.dart';

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
          const CenterSection(),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),
          const SectionListWidget(
            title: 'Next',
            hasInnerButton: false,
            hasBottomButton: false,
            isNtext: true,
            hasFilter: true,
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
        ],
      ),
    );
  }
}
