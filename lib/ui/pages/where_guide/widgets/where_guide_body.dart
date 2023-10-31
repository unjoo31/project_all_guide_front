import 'package:flutter/material.dart';

import 'where_guide_list_form.dart';

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
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
