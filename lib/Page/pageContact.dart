import 'package:flutter/material.dart';

class PageContact extends StatefulWidget {

  const PageContact({super.key});

  @override
  State<PageContact> createState() => PageContactWidget();
}

class PageContactWidget extends State<PageContact> {

  void showToast(){
    print("Bouton copie numéro appuyé");
  }

  void redirectGoogle(){
    print("Container appuyé");
  }

  Widget contactCard(){
    return 
    InkWell(
      onTap: redirectGoogle,
      child: Container(
        child: Column(
          children: [
            const Text("Aboubacar",style: TextStyle(fontSize: 18)),
            const Text("Kamara",style: TextStyle(fontSize: 18)),
            Row(
              children: [
                const Text("07 69 67 64 04"),
                IconButton(onPressed: showToast, icon: const Icon(Icons.copy))
              ],
            )
          ],
        ),
      ),
    );
    
  }

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
          children: <Widget>[
            contactCard()
          ]
        ),
      ),
    );
  }
}