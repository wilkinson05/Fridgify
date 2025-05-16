import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// import 'package:http/http.dart' as http;
//import 'dart:convert';

class ScannerScreen extends StatefulWidget {
  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  String barcode = 'Unknown';
  bool isLoading = false;

  // Function to start scanning
  Future<void> scanBarcode() async {
    // String result = await FlutterBarcodeScanner.scanBarcode(
    //   '#ff6666', // Color for the scanning line
    //   'Cancel',   // Text for the cancel button
    //   true,       // Whether the flash button should be visible
    //   ScanMode.BARCODE, // Scan mode (could also use ScanMode.QR)
    // );

    // setState(() {
    //   barcode = result;
    // });

    // if (barcode != '-1') {
    //   // Proceed to make HTTP request if a barcode is scanned
    //   sendBarcodeToServer(barcode);
    // }
  }

  // Function to send barcode to server
  // Future<void> sendBarcodeToServer(String barcode) async {
  //   setState(() {
  //     isLoading = true; // Start loading
  //   });

  //   // Example API endpoint (you should replace this with your actual API)
  //   final url = Uri.parse('https://your-api-endpoint.com/barcode');
  //   try {
  //     final response = await http.post(
  //       url,
  //       body: json.encode({'barcode': barcode}),
  //       headers: {'Content-Type': 'application/json'},
  //     );

  //     if (response.statusCode == 200) {
  //       // If the request is successful, handle the response
  //       print('Server response: ${response.body}');
  //       // You can show the response on the UI if needed
  //     } else {
  //       // Handle failure if needed
  //       print('Failed to send barcode data');
  //     }
  //   } catch (e) {
  //     print('Error sending data: $e');
  //   } finally {
  //     setState(() {
  //       isLoading = false; // Stop loading
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanner Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              CircularProgressIndicator(), // Show loading indicator while sending request
            if (!isLoading) ...[
              Text(
                'Scanned Barcode: $barcode',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: scanBarcode,
                child: Text('Scan Barcode'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
