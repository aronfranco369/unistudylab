import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:uni_study_hub/screens/home_screen_1.dart';

import '../widgets/buttonsWidget.dart';
import '../widgets/decorations.dart';
import '../widgets/mycolors.dart';

class SHForgotPasswordScreen extends StatefulWidget {
  @override
  SHForgotPasswordScreenState createState() => SHForgotPasswordScreenState();
}

class SHForgotPasswordScreenState extends State<SHForgotPasswordScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   init();
  // }

  // void init() async {
  //   //
  // }

  // @override
  // void setState(fn) {
  //   if (mounted) super.setState(fn);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/suaAdministration.jpg',
              fit: BoxFit.fill,
              height: context.height(),
              width: context.width(),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  color: SHScaffoldDarkColor,
                ),
                padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                width: context.width(),
                height: context.height() * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lets send you a\nnew password....', style: boldTextStyle(color: white, size: 22)),
                      ],
                    ),
                    32.height,
                    AppTextField(
                      textStyle: primaryTextStyle(color: white),
                      cursorColor: white,
                      textFieldType: TextFieldType.PASSWORD,
                      decoration: buildSHInputDecoration(
                        'Email',
                      ),
                    ),
                    16.height,
                    16.height,
                    button(
                      context: context,
                      textColor: white,
                      width: context.width(),
                      text: 'Lets give you a new password',
                      onTap: () {
                        HomeScreenOne().launch(context);
                      },
                    ),
                    32.height,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
