import 'package:flutter/material.dart';
import 'package:flutter_qrcode/generate.dart';
import 'package:flutter_qrcode/scan.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR CODE'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556'),
            ),
            flatButon("Scan QR Code", Scan()),
            SizedBox(
              height: 10.0,
            ),
            flatButon("Generate QR Code", Generate())
          ],
        ),
      ),
    );
  }

  Widget flatButon(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      child: Text(text),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.blue, width: 3.0)),
    );
  }
}
