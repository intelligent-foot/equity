import 'dart:ui';

import 'package:equity/src/constants/colors.dart';
import 'package:equity/src/constants/sizes.dart';
import 'package:equity/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'menu_widget.dart';

class TransactScreen extends StatelessWidget {
  const TransactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(actions: <Widget>[
          IconButton(icon: const Icon(Icons.messenger_outline_sharp),
          onPressed: () {
            
          },),
          
        ],
        title: Center(child: Text(tTransact, style: Theme.of(context).textTheme.headline4,)),),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
             
                Row(
                  children: [
                    Text(
                      tBorrowHeader,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    width: 350.0,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(tFavourites,style: Theme.of(context).textTheme.headline6,),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(tFavouritesHeader),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              tAddFavourite,style: const TextStyle(color: tPrimaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 3, color: Colors.black),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      tSendMoney,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                MenuWidget(
                  title: tOwnEquity,
                  icon: LineAwesomeIcons.cog,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tAnotherEquity,
                  icon: LineAwesomeIcons.coins,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tpayTopUp,
                  icon: LineAwesomeIcons.wavy_money_bill,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tMobileWallet,
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tAnotherBank,
                  icon: LineAwesomeIcons.money_bill,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                Row(
                  children: [
                    Text(
                      tPayWithEquity,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                MenuWidget(
                  title: tPayBillOnly,
                  icon: LineAwesomeIcons.receipt,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tBuyGoods,
                  icon: LineAwesomeIcons.coins,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                Row(
                  children: [
                    Text(
                      tBuy,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                MenuWidget(
                  title: tBuy,
                  icon: LineAwesomeIcons.coins,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                Row(
                  children: [
                    Text(
                      tWithdrawCash,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                MenuWidget(
                  title: tWithdrawCash,
                  icon: LineAwesomeIcons.coins,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                Row(
                  children: [
                    Text(
                      tTranscactWithOtherPlatform,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                MenuWidget(
                  title: tPaypal,
                  icon: LineAwesomeIcons.paypal,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
                MenuWidget(
                  title: tWesternUnion,
                  icon: LineAwesomeIcons.coins,
                  onPress: () {},
                ),
                const Divider(
                  indent: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
