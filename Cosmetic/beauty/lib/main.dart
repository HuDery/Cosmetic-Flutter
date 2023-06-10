import 'package:beauty/login.dart';
import 'package:beauty/produc.dart';
import 'package:beauty/userDetail.dart';
import 'package:flutter/material.dart';
import 'package:beauty/ingredient.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Xin chào, Bạn',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF766B51),
                      ),
                    ),
                    Text(
                      'Chào mừng bạn tới Beau té',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserInfoScreen()),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF766B51),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF766B51),
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: 350,
              height: 30,
              child: const TextField(
                decoration: InputDecoration(
                  labelText: "Nhập tên sản phẩm",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF766B51)),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nhấn nút Trang chủ
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(
                        30, 10)), // Chỉnh kích thước (width, height) của nút
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Chỉnh border radius
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF766B51)),
                  ),
                  child: Text(
                    'Trang chủ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Product()),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(
                        30, 10)), // Chỉnh kích thước (width, height) của nút
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Chỉnh border radius
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF766B51)),
                  ),
                  child: Text(
                    'Sản phẩm ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Handle the event when the Home button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComponentListScreen()),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(
                        10, 10)), // Chỉnh kích thước (width, height) của nút
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Chỉnh border radius
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF766B51)),
                  ),
                  child: Text(
                    'Thành phần',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // Chỉnh border radius của hình ảnh
              child: Image.network(
                'https://www.namesnack.com/images/namesnack-cosmetics-business-names-3840x2561-2020091.jpeg?crop=40:21,smart&width=1200&dpr=2',
                width: 350, // Chỉnh chiều rộng của hình ảnh
                height: 200, // Chỉnh chiều cao của hình ảnh
                fit: BoxFit.cover, // Căn chỉnh hình ảnh trong kích thước đã cho
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 200, // Chiều rộng bằng vô cùng
              height: 1, // Chiều cao của dấu gạch ngang
              color: Color(0xFF766B51), // Màu sắc của dấu gạch ngang
            ),
            SizedBox(height: 5),
            const Text(
              'Sản phẩm mới nhất',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF766B51),
              ),
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/neutrogenahydro.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 13),
                          child: Text(
                            'Neutrogena Hydro Boost',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/brighten.png',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Recovery Cream',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/AntiPollutionFacial.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 13),
                          child: Text(
                            'Anti Pollution Facial',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/dearklairs.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Klairs All-day Airy',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Klairs All-day Airy.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 13),
                          child: Text(
                            'Klairs All-day Airy',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Sản phẩm bán chạy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF766B51),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Viaggio 3D.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 4),
                          child: Text(
                            'Viaggio 3D',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Peeling Shot Ampoule.jpg',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Peeling Shot Ampoule',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Gilaa Plant Serum.png',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Gilaa Plant Serum',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Lacto Cica Mild.png',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Lacto Cica Mild',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    width: 100,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/image/Tea Tree Heber Natural.png',
                          width: 100,
                          height: 90,
                        ),
                        SizedBox(height: 8),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Tea Tree Heber',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
