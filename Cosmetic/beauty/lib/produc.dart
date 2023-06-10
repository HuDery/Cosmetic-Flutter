import 'package:beauty/demoSortpage.dart';
import 'package:beauty/product-detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ingredient.dart';
import 'main.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 250, 250, 249)),
                    ),
                    child: Text(
                      'Trang chủ',
                      style: TextStyle(
                        color: Color(0xFF766B51),
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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 250, 250, 249)),
                    ),
                    child: Text(
                      'Sản phẩm',
                      style: TextStyle(
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComponentListScreen()),
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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 250, 250, 249)),
                    ),
                    child: Text(
                      'Thành phần',
                      style: TextStyle(
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB3AD9F),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFB3AD9F),
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image.network(
                'https://images.rawpixel.com/image_450/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjExMDctMDQtYS5qcGc.jpg',
                width: double.infinity, // Chỉnh chiều rộng của hình ảnh
                height: 50, // Chỉnh chiều cao của hình ảnh
                fit: BoxFit.cover, // Căn chỉnh hình ảnh trong kích thước đã cho
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      print(value);
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Sản phẩm mới nhất',
                        child: Text(
                          'Sản phẩm mới nhất',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Sản phẩm bán chạy nhất',
                        child: Text(
                          'Sản phẩm bán chạy nhất',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    offset: Offset(0, 30), // Tùy chỉnh vị trí dropdown
                    color: Color(0xFF766B51), // Màu nền của dropdown
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF766B51), // Màu nền của Container
                        borderRadius:
                            BorderRadius.circular(10), // Bán kính của Container
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sắp xếp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
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
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      print(value);
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Chống nắng',
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Productv(),
                              ),
                            );
                          },
                          child: Text(
                            'Chống nắng',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Dưỡng ẩm',
                        child: Text(
                          'Dưỡng ẩm',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Dán mụn',
                        child: Text(
                          'Dán mụn',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Toner/Lotion',
                        child: Text(
                          'Toner/Lotion',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    offset: Offset(0, 30), // Tùy chỉnh vị trí dropdown
                    color: Color(0xFF766B51), // Màu nền của dropdown
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Loại sản phẩm',
                            style: TextStyle(
                              color: Color(0xFF766B51),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF766B51),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      print(value);
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Cải thiện mụn',
                        child: Text(
                          'Cải thiện mụn',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cải thiện thâm nám',
                        child: Text(
                          'Cải thiện thâm nám',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cải thiện sẹo',
                        child: Text(
                          'Cải thiện sẹo',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Tẩy tế bào chết',
                        child: Text(
                          'Tẩy tế bào chết',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    offset: Offset(0, 30), // Tùy chỉnh vị trí dropdown
                    color: Color(0xFF766B51), // Màu nền của dropdown
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Vấn đề da',
                            style: TextStyle(
                              color: Color(0xFF766B51),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF766B51),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      print(value);
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'Azelaic acid',
                        child: Text(
                          'Azelaic acid',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Cải thiện thâm nám',
                        child: Text(
                          'Cải thiện thâm nám',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'B5',
                        child: Text(
                          'B5',
                          style: TextStyle(color: Colors.white // Màu chữ trắng
                              ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Resveratrol',
                        child: Text(
                          'Resveratrol',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Glycolic Acid(AHA)',
                        child: Text(
                          'Glycolic Acid(AHA)',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Resveratrol',
                        child: Text(
                          'Resveratrol',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Gluconolactone (PHA)',
                        child: Text(
                          'Gluconolactone (PHA)',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Hexylresorcinol',
                        child: Text(
                          'Hexylresorcinol',
                          style: TextStyle(
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    offset: Offset(0, 30), // Tùy chỉnh vị trí dropdown
                    color: Color(0xFF766B51), // Màu nền của dropdown
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hoạt chất',
                            style: TextStyle(
                              color: Color(0xFF766B51),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF766B51),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 150,
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
                      child: Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.network(
                                'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/a13904230f8e64cb38212b233c609a80_cb2d6fed00.jpg',
                                width: 110,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Neutrogena Hydro Boost',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/8e971a2e667f0dff6e8c6c2602c25f5d_36c0a2051f.jpg',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Neutrogena Hydroboost',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/brighten_2_8c0df456f6.png',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              'Skin Recovery Cream',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 150,
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
                      child: Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.network(
                                'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/Rejuvaskin_Anti_Pollution_Facial_Cleanser_e550176fb8.jpg',
                                width: 110,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Anti-Pollution Facial',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/dear_klairs_all_day_airy_sunscreen_13e8b6b925.jpg',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Klairs All-day Airy Sunscre',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/c470216db53f59d1bd65380582bb6630_jpg_525x525q80_42e0ed7d38.jpg',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Vaseline Healthy Bright',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 150,
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
                      child: Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.network(
                                'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/9550_peptide_booster_slide_1_09062020_20462f4969.jpg',
                                width: 110,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              margin: EdgeInsets.only(left: 35),
                              child: Text(
                                'Peptide Booster',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/neostrata_oily_skin_solution_900x900_be3bc21975fd4452b803dfb02e522261_7717cb16c5.webp',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'NeoStrata Oily Skin',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/chong_nang_cell_fusion_c_advanced_clear_sunscreen_100_spf50_5_500x500_594ad9b4802940e0857e70e403c30d6b_874448f72a.webp',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Cell fusion C Advanced',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 150,
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
                      child: Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.network(
                                'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/d9ee40acfdecdaef0062f624f9b685a2_478b6cdcb2.jpg',
                                width: 110,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'ESSENDORA Vit C',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/16626904346858_7e6d8dc581.jpg',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Peeling Shot Ampoule',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/Coreana_Lab_Ample_NVC_Shot100ml_800x_92cebe3168.webp',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              'VC Shot Ampoule',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 110,
                      height: 150,
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
                      child: Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Image.network(
                                'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/X2_100_ML_7b79633fd0.png',
                                width: 110,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                'Peptide 2X Shot Ampoule',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/freeplus_mild_soap_a_600_f7e5d088c1764e469669ab0a42bb6e55_7529dccb63.webp',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Freeplus Mild',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF766B51),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 150,
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
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Image.network(
                              'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/acniover_serum_01_c6046ecb0f104c3eb5c693f4566e83d6_master_29442b6eb2.webp',
                              width: 110,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              'Martiderm Acniover',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF766B51),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            ]),
          ),
        ),
      ),
    );
  }
}
