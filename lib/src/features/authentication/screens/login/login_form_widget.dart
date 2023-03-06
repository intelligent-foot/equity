import 'package:equity/src/features/authentication/screens/Dashbord/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
              labelText: tPassword,
              hintText: tEnterPassword,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp))),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () {}, child: Center(child: Text(tForgotPassword))),
        const SizedBox(
          height: 500,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(const Dashboard());
              },
              child: Text(tLogin)),
        ),
      ],
    ));
  }
}
