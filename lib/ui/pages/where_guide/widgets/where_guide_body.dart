import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/where_guide_make_forth_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/where_guide_make_second_map_form.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/where_guide_make_third_form.dart';

import 'where_guide_list_form.dart';
import 'where_guide_make_first_form.dart';
import 'where_guide_make_second_form.dart';

class WhereGuideBody extends StatefulWidget {
  const WhereGuideBody({super.key});

  @override
  State<WhereGuideBody> createState() => _WhoGuideBodyState();
}

class _WhoGuideBodyState extends State<WhereGuideBody> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        late WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => WhereGuideListForm();
            break;
          case 'guidemakefirtform':
            builder = (context) => WhereGuideFirstForm();
            break;
          case 'guidemakesecondform':
            builder = (context) => WhereGuideSecondForm();
            break;
          case 'guidemakesecondmapform':
            builder = (context) => WhereGuideSecondMapForm();
            break;
          case 'guidemakethirdform':
            builder = (context) => WhereGuideThirdForm();
            break;
          case 'guidemakeforthform':
            builder = (context) => WhereGuideForthForm();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
