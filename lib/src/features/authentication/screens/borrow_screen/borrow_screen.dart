import 'package:equity/src/features/authentication/screens/transact_screen/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class BorrowScreen extends StatelessWidget {
  const BorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.messenger_outline_sharp),
              onPressed: () {},
            ),
          ],
          title: Center(
              child: Text(
            tBorrow,
            style: Theme.of(context).textTheme.headline4,
          )),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      tLoansOnly,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
                MenuWidget(
                    title: tGetLoan,
                    icon: LineAwesomeIcons.money_bill,
                    onPress: () {}),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                    title: tPayLoan,
                    icon: LineAwesomeIcons.coins,
                    onPress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
