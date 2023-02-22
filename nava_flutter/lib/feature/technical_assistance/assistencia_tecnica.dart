import 'package:flutter/material.dart';

import 'presentation/widget/assistence_sub_header/assistence_sub_header.dart';
import 'presentation/widget/form_assistence/form_header/form_header.dart';

class TechnicalAssistance extends StatelessWidget {
  const TechnicalAssistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            AssistanceSubHeader(),
            Divider(
              height: 1,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0, right: 14.0),
              child: FormsHeader(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: FormsHeader(),
            )
          ],
        ),
      ),
    );
  }
}
