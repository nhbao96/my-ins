import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_ins/common/utils/colors.dart';
import 'package:my_ins/features/widgets/text_field_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _bioTextEditingController;
  late TextEditingController _usernameTextEditingController;
  @override
  void initState() {
    // TODO: implement initState
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _bioTextEditingController = TextEditingController();
    _usernameTextEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _bioTextEditingController.dispose();
    _usernameTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            SvgPicture.asset(
              "assets/ic_instagram.svg",
              color: primaryColor,
              height: 64,
            ),
            //email
            const SizedBox(
              height: 64,
            ),

            Stack(
              children: [
               const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1699459867086-9d9d4031c0e3?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                  ),
                ),
                Positioned(child: IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.add_a_photo),
                ),
                bottom: -10,
                left: 80,),
              ],
            ),
            const SizedBox(height: 24,),
            TextFieldInput(textEditingController: _usernameTextEditingController, hintText: "input your username", textInputType: TextInputType.text),
            const SizedBox(height: 24,),
            TextFieldInput(textEditingController: _passwordTextEditingController, hintText: "input your password", textInputType: TextInputType.text,isPass: true,),
            const SizedBox(height: 24,),
            TextFieldInput(textEditingController: _bioTextEditingController, hintText: "input your bio", textInputType: TextInputType.text),
            const SizedBox(height: 24,),
            TextFieldInput(textEditingController: _emailTextEditingController, hintText: "input your email", textInputType: TextInputType.emailAddress),
            const SizedBox(height: 24,),
            InkWell(
              onTap: (){

              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  color: blueColor
                ),
                child: Center(child: Text("Sign up"),),
              ),
            ),
            Flexible(
              child: Container(),
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}
