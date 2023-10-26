import 'package:flutter/material.dart';

import '../../../../data/model/keyword_second.dart';
import 'all_guide_result_form.dart';
import 'recommend_guide_form.dart';
import 'relation_guide_form.dart';

class AllGuideBody extends StatefulWidget {
  const AllGuideBody({super.key});

  @override
  State<AllGuideBody> createState() => _AllGuideBodyState();
}

class _AllGuideBodyState extends State<AllGuideBody> {
  final List<KeywordSecond> list = keywordSecondList;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        late WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => ReccommendGuideForm();
            break;
          case 'relationGuide':
            builder = (context) => RelationGuideForm();
            break;
          case 'result':
            builder = (context) => AllGuideResultForm();
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
