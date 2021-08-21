import 'package:flutter/material.dart';
import 'package:login/modules/button.dart';
import 'package:login/modules/textField.dart';
import 'package:login/screens/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();
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
                          "Register",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  DefaultFormField(
                    controller: name,
                    hintText: "Name",
                    textInputType: TextInputType.name,
                  ),
                  DefaultFormField(
                    controller: userName,
                    hintText: "UserName",
                    textInputType: TextInputType.text,
                  ),
                  DefaultFormField(
                    controller: phone,
                    hintText: "Phone",
                    textInputType: TextInputType.phone,
                  ),
                  DefaultFormField(
                    controller: password,
                    hintText: "password",
                    textInputType: TextInputType.visiblePassword,
                    isPassword: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomButton(
                        text: "Register",
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
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "do you have account ? Login now  ",
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
