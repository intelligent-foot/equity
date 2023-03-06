import 'package:equity/src/constants/sizes.dart';
import 'package:equity/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Center(
                child: Text(
                  tGreetings,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              const SizedBox(height: 10,),
              const LoginForm()
            ],
          ),
        )),
      ),
    );
  }
}


