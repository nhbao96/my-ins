import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ins/common/utils/colors.dart';
import 'package:my_ins/features/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailEdittingController;
  late TextEditingController _passwordEdittingController;

  @override
  void initState() {
    // TODO: implement initState
    _emailEdittingController = TextEditingController();
    _passwordEdittingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailEdittingController.dispose();
    _passwordEdittingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              //svg
              SvgPicture.asset(
                "assets/ic_instagram.svg",
                color: primaryColor,
                height: 64,
              ),
              //email
              const SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  textEditingController: _emailEdittingController,
                  hintText: "Enter your email",
                  textInputType: TextInputType.emailAddress),
              //pass
              const SizedBox(
                height: 24,
              ),
              TextFieldInput(
                textEditingController: _passwordEdittingController,
                hintText: "Enter your password",
                textInputType: TextInputType.text,
                isPass: true,
              ),
              //login btn
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: (){
                    print("press login button");
                },
                child: Container(
                  child: const Text("Login"),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              //transactioning to signup
              Flexible(child: Container(),flex: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Don't have an account? "),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      child: Text("Sign up.",style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
