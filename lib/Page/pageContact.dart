import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';



class PageContact extends StatefulWidget {

  const PageContact({super.key});

  @override
  State<PageContact> createState() => PageContactWidget();
}

class PageContactWidget extends State<PageContact> {

  String numero = "07 69 67 64 04";

  void showToast() async {
    await Clipboard.setData(ClipboardData(text: numero));
    Fluttertoast.showToast(
        msg: "Numéro de téléphone copié avec succès",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.black,
        fontSize: 16.0
    );
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
                Text(numero),
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