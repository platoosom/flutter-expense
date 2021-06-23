import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login"),
            Image.asset("images/wallet.png"),
            Text("ExpenseTrac"),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, top: 15, bottom: 15, right: 15),
                        child: Image.asset(
                          "images/user.png",
                          width: 12,
                          height: 12,
                        ),
                      ),
                      hintText: "Username",
                    ),
                  ),
                  TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, top: 15, bottom: 15, right: 15),
                        child: Image.asset(
                          "images/key.png",
                          width: 12,
                          height: 12,
                        ),
                      ),
                      hintText: "Password",
                    ),
                  ),
                  Text("Forget Password?"),
                  Text("or Signin with social media"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Facebook"), Text("Google")]),
                  ElevatedButton(onPressed: () {}, child: Text("SIGN IN")),
                  Text("Don't have account? Sign up")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
