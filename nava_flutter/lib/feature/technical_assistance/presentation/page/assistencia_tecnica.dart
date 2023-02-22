import 'package:flutter/material.dart';
import 'package:nava_flutter/feature/technical_assistance/presentation/widget/form_assistence/form_assistence.dart';

import '../widget/assistence_sub_header/assistence_sub_header.dart';
import '../widget/form_assistence/form_header/form_header.dart';

class AssistanceTechnical extends StatelessWidget {
  const AssistanceTechnical({Key? key}) : super(key: key);

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
            FormsHeader(),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Forms(),
            )
          ],
        ),
      ),
    );
  }
}
