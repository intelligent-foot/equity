import 'package:equity/src/constants/text_strings.dart';
import 'package:equity/src/features/authentication/screens/transact_screen/menu_widget.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

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
            tMore,
            style: Theme.of(context).textTheme.headline4,
          )),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 350.0,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            Text(tName),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(tEmail),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(tPhoneNumber)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MenuWidget(
                        title: tNotifications,
                        icon: Icons.notifications,
                        onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tActivateChat,
                        icon: Icons.whatsapp,
                        onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tSecurity,
                        icon: Icons.lock_outline,
                        onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tSupport,
                        icon: Icons.support_agent_rounded,
                        onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tLanguage, icon: Icons.language, onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tRecommend,
                        icon: Icons.phone_android_outlined,
                        onPress: () {}),
                    const Divider(
                      indent: 40,
                    ),
                    MenuWidget(
                        title: tSighOut,
                        icon: Icons.power_settings_new,
                        onPress: () {}),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
