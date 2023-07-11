import 'package:beauty/PaymentConfirmationScreen.dart';
import 'package:flutter/material.dart';

import 'PaymentSuccessScreen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPackage = '';

  Widget buildPackageButton(String packageText) {
    final isSelected = selectedPackage == packageText;

    return Container(
      width: 330,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedPackage = packageText;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: isSelected ? Colors.blueAccent : Colors.black,
          elevation: isSelected ? 0 : 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          packageText,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Chọn gói thanh toán',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              buildPackageButton('Gói 80.000VNĐ/Năm'),
              SizedBox(height: 20),
              buildPackageButton('Gói 40.000VNĐ/6Tháng'),
              SizedBox(height: 20),
              buildPackageButton('Gói 20.000VNĐ/3Tháng'),
              SizedBox(height: 35),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentConfirmationScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 160, 174, 139),
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Thanh toán',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
