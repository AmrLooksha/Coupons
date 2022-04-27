import 'package:flutter/material.dart';
import 'package:shop_app/screens/Sign_Up/complete_profile_screen.dart';
import 'package:shop_app/screens/utils/colors.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, CompleteProfileScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: AppColors.mainColor),
          ),
        ),
      ],
    );
  }
}
