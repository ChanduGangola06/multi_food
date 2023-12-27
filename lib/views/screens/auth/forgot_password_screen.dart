import 'package:flutter/material.dart';
import 'package:multi_food/utils/color_extension.dart';
import 'package:multi_food/views/widgets/line_textfield.dart';
import 'package:multi_food/views/widgets/round_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: SizedBox(
          width: media.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: TColor.primary,
                  ),
                ),
              ),
              Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: media.width * 0.02,
              ),
              Text(
                "Retrieve Your Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.gray,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: media.width * 0.07,
              ),
              LineTextField(
                controller: txtEmail,
                hitText: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: media.width * 0.07,
              ),
              RoundButton(
                title: "Login",
                onPressed: () {},
                type: RoundButtonType.primary,
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
