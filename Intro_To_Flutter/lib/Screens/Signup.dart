import 'package:flutter/material.dart';
import 'package:intro_to_flutter/Screens/Login.dart';
import 'package:intro_to_flutter/Widgets/InputText.dart';
import 'package:intro_to_flutter/Widgets/PrimaryButton.dart';

class Signup extends StatefulWidget {
  static String routeName = "/signup";
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: width * .9,
                child: Column(
                  children: [
                    InputText(
                        labelText: "First Name",
                        hintText: "Enter First Name",
                        controller: firstNameController,
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputText(
                        labelText: "Last Name",
                        hintText: "Enter Last Name",
                        controller: lastNameController,
                        textInputType: TextInputType.name),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputText(
                        labelText: "Email Address",
                        hintText: "Enter Email Address",
                        controller: emailController,
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputText(
                        labelText: "Password",
                        hintText: "Enter Password",
                        controller: passwordController,
                        textInputType: TextInputType.visiblePassword),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InputText(
                        labelText: "Confirm Password",
                        hintText: "Confirm Password",
                        controller: confirmPasswordController,
                        textInputType: TextInputType.visiblePassword),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PrimaryButton(
                      text: "Sign Up",
                      iconData: Icons.login,
                      onPress: () {
                        Navigator.pushReplacementNamed(
                            context, Login.routeName);
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
