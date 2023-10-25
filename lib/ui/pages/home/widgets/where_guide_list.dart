import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_top_button.dart';

class WhereGuideList extends StatefulWidget {
  const WhereGuideList({super.key});

  @override
  State<WhereGuideList> createState() => _WhereGuideListState();
}

class _WhereGuideListState extends State<WhereGuideList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: HomeTopButton(),
                width: 370,
              ),
            ],
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
        ],
      ),
    );
  }
}
