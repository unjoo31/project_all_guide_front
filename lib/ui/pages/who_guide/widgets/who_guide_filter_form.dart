import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/who_guide/widgets/who_guide_filter_list.dart';

import '../../../../data/model/filter_item.dart';
import '../../components/box_no_padding_button.dart';
import 'who_guide_filter_title.dart';

class WhoGuideFilterForm extends StatelessWidget {
  const WhoGuideFilterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 20),
            WhoGuideFilterTitle(),
            SizedBox(height: 20),
            Column(
              children: List.generate(
                filterItemList.length,
                (index) => WhoGuideFilterList(
                  item: filterItemList[index],
                ),
              ).toList(),
            ),
            BoxNoPaddingButton(
              text: "필터 적용하기",
              press: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
