import 'package:flutter/material.dart';

import 'who_guide_list_form.dart';
import 'who_guide_make_first_form.dart';
import 'who_guide_make_forth_form.dart';
import 'who_guide_make_second_form.dart';
import 'who_guide_make_third_form.dart';

class WhoGuideBody extends StatefulWidget {
  const WhoGuideBody({super.key});

  @override
  State<WhoGuideBody> createState() => _WhoGuideBodyState();
}

class _WhoGuideBodyState extends State<WhoGuideBody> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        late WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => WhoGuideListForm();
            break;
          case 'guidemakefirtform':
            builder = (context) => WhoGuideMakeFirstForm();
            break;
          case 'guidemakesecondform':
            builder = (context) => WhoGuideMakeSecondForm();
            break;
          case 'guidemakethirdform':
            builder = (context) => WhoGuideMakeThirdForm();
            break;
          case 'guidemakeforthform':
            builder = (context) => WhoGuideMakeForthForm();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
