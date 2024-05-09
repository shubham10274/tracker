import 'package:flutter/material.dart';
import 'package:weight_track/size_config/size_config.dart';

class AuthScreen extends StatelessWidget {
  static String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return BaseView<AuthScreenViewModel>(builder: (context, model, child) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Container(
            // decoration: BoxDecoration(
            //   color: Colors.white,
            //   // borderRadius: BorderRadius.circular(20.0),
            // ),
            child: Image.asset(
              'assets/images/logo.webp',
              height: getProportionateScreenHeight(75),
              width: getProportionateScreenWidth(73),
            ),
          ),
          Text(
            'Hello',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(50),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(8),
              ),
              Text(
                'Welcome to WeightTracker',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          // AuthForm(
          //   model: model,
          // ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'By tapping SignUp I agree to Lossy\'s Terms of service.Privacy Policy and User Agreement. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenWidth(13),
              ),
            ),
          ),
        ],
      ),
    );
    // });
  }
}
