import 'package:flutter/material.dart';

class PageContact extends StatefulWidget {

  const PageContact({super.key});

  @override
  State<PageContact> createState() => PageContactWidget();
}

class PageContactWidget extends State<PageContact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Page contact")
          ]
        ),
      ),
    );
  }
}