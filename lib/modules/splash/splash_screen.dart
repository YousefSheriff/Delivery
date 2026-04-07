import 'dart:io';

import 'package:delivery/modules/layout/layout_screen.dart';
import 'package:delivery/shared/components/components.dart';
import 'package:delivery/shared/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueviolet,
      child: Stack(
        children: [
          Container(
            width: 500,
            height: 500,
            padding: EdgeInsetsDirectional.only(start: 140.0),
            child: Image(
              image: AssetImage('assets/images/BG.png'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: 110.0,
            height: 130.0,
            padding: EdgeInsets.only(
              top: 60.0,
              left: 15.0,
            ),
            child: Image(
              image: AssetImage('assets/images/LOGO.png'),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              width: double.infinity,
              height: 500.0,
              color: whitesmoke,
              child: Column(
                children:
                [
                 Padding(
                   // padding:
                   padding: EdgeInsetsDirectional.only(top: 20.0),
                   child: CircleAvatar(
                     radius: 40.0,
                     child: Image(
                        image: AssetImage('assets/images/Icon.png'),
                      ),
                   ),
                 ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 326,
                    height: 80,
                    child: Text(
                      'Non-Contact Deliveries',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 34,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                        height: 1.21,
                        letterSpacing: 0.41,
                        color: textPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 380,
                    height: 80,
                    child: Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.\n',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        height: 1.5,
                        letterSpacing: -0.41,
                        color: textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  defaultButton(
                    width: 350,
                    radius: 12,
                    height: 60,
                    textSize: 17,
                    isUpper: true,
                    color: primaryButton,
                    text: 'Order Noe',
                    Function: ()
                    {
                      navigateTo(context, LayoutScreen());
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextButton(Function: ()
                  {
                    // exit(0);
                    SystemNavigator.pop();
                  },
                    text: "Dismiss", color: textSecondary,
                  ),
                ],
              ),
            ),
          ),

        ],

      ),

    );
  }
}
