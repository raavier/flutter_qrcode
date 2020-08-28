import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String qrResult =
      'Not yet Scanned'; //this is the state where we keep the qr code string
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Result',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              child: Text('Scan QR Code'),
              //Scan happens here
              onPressed: () async {
                String scaning = await BarcodeScanner
                    .scan(); // Starts the camera for scanning the barcode, shows a preview window and returns the barcode if one was scanned. Can throw an exception
                setState(() {
                  qrResult = scaning;
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blue, width: 3.0)),
            ),
          ],
        ),
      ),
    );
  }
}
