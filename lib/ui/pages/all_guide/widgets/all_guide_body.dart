import 'package:flutter/material.dart';

import '../../../../data/model/keyword.dart';
import 'keyword_list.dart';

class AllGuideBody extends StatefulWidget {
  const AllGuideBody({super.key});

  @override
  State<AllGuideBody> createState() => _AllGuideBodyState();
}

class _AllGuideBodyState extends State<AllGuideBody> {
  final List<Keyword> list = keywordList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        centerTitle: false,
        flexibleSpace: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/main_top_logo.png',
                height: 60,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          KeywordList(),
        ],
      ),
    );
  }
}
