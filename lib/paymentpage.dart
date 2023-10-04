import 'package:ex2/cartpage.dart';
import 'package:ex2/homepage.dart';
import 'package:ex2/shoppage.dart';
import 'package:flutter/material.dart';
import 'cartpage.dart';
import 'package:ex2/cartpage.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // QR Code
            Image.asset('lib/images/qr_code.png'),
            // ข้อความ
            Text(
              'Make Payment',
              style: TextStyle(fontSize: 24),
            ),
            // ปุ่ม
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        HomePage())); //เปลี่ยนได้ว่าจะให้หลับไปหน้าไหน
              },
              child: Text('Pay'),
              color: Color.fromARGB(255, 209, 126, 53),
            ),
          ],
        ),
      ),
    );
  }
}
