import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';


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

  void redirectGoogle() async {
    final Uri url = Uri.parse('https://google.fr');
    if (!await launchUrl(url)) {
          throw Exception('Erreur du lancement de l\'url');
      }
  }

  Widget contactCard() {
    return InkWell(
      onTap: redirectGoogle,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/user.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Aboubacar Kamara",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      numero,
                      style: const TextStyle(fontSize: 14),
                      ),
                    IconButton(onPressed: showToast, icon: const Icon(Icons.copy))
                  ],
                )
              ],
            ),
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
      body: ListView.builder(
        itemCount: 12, 
        itemBuilder: (context, index) {
          return contactCard();
        },
      ),
    );
  }
}