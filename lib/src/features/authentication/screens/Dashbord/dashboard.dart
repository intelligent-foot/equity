import 'package:equity/src/constants/colors.dart';
import 'package:equity/src/constants/text_strings.dart';

import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Center(
                child: Text(
                  tHome,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                tGreetings,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tHeader,
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),color: tPrimaryColor
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_outlined),
                    ),
                    
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
