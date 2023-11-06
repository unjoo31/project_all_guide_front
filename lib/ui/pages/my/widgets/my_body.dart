import 'package:flutter/material.dart';

import 'my_all_guide_form.dart';
import 'my_information_form.dart';
import 'my_list_form.dart';
import 'my_where_guide_form.dart';
import 'my_who_guide_form.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        late WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => MyListForm();
            break;
          case 'myinformationform':
            builder = (context) => MyInformationForm();
            break;
          case 'myallguideform':
            builder = (context) => MyAllGuideForm();
            break;
          case 'mywhoguideform':
            builder = (context) => MyWhoGuideForm();
            break;
          case 'mywhereguideform':
            builder = (context) => MyWhereGuideForm();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
