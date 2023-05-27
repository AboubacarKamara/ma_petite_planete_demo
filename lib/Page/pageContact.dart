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
      appBar: AppBar(
        title: const Text('Page Contact'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
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