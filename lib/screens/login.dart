import 'package:flutter/material.dart';
import 'package:login/modules/button.dart';
import 'package:login/modules/textField.dart';
import 'package:login/screens/register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    var med = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: med.height,
          width: med.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/top1.png",
                    width: med.width,
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/bottom1.png",
                    width: med.width,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/top2.png",
                    width: med.width,
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/bottom2.png",
                    width: med.width,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/main.png",
                      height: med.width / 2.5,
                      width: med.width / 2.5,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(45),
                    child: Row(
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  DefaultFormField(
                    controller: userName,
                    hintText: "UserName",
                    textInputType: TextInputType.text,
                  ),
                  DefaultFormField(
                    controller: password,
                    hintText: "password",
                    textInputType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "do you forget password ?   ",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomButton(
                        text: "Login",
                        onpress: () {},
                      ),
                      SizedBox(
                        height: 100,
                        width: 20,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "don't have account ? Register now  ",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
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
