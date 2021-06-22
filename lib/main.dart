import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login"),
            Image.asset("images/wallet.png"),
            Text("ExpenseTrac"),
          ],
        ),
      ),
    ),
  ));
}
