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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://kyo.vn/wp-content/uploads/2019/10/Charlotte-tilbury-coachella-coral.jpg',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Milani Cosmetics',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://global-uploads.webflow.com/6256995755a7ea0a3d8fbd11/6257ec9152f14bfa7fba94ab_5fb83e67ea6cfd31432b6183_1.jpeg',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Perfect lighting',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://global-uploads.webflow.com/6256995755a7ea0a3d8fbd11/6257ec91e864f95332e13cdc_5fb8342c08400fbc5b937215__DmFK0mB34nSmapKA2ttgS7IOBQAOnT-OrH0JcHfZAzvt3JUOoy8LjskhijfI08pW3SApdypbXjB-_PUhy-Kl9fN-ZHG4UarXkWZgKjh3uXhk7Z5NKSdyGpR9S50FA.jpeg',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Balancing - M3',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                )
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.network(
                      'https://assets.aemi.vn/images/2023/3/1678767490907-0',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Face Cream Biyokea',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      'https://assets.aemi.vn/webp/BJO_TNR_150ml_001_img1.webp',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Ginseng Essence',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    Image.network(
                      'https://assets.aemi.vn/images/2023/4/1682490674576-0',
                      width: 80, // Chỉnh chiều rộng của hình ảnh
                      height: 100, // Chỉnh chiều cao của hình ảnh
                      fit: BoxFit
                          .cover, // Căn chỉnh hình ảnh trong kích thước đã cho
                    ),
                    SizedBox(height: 8), // Khoảng cách giữa hình ảnh và văn bản
                    Text(
                      'Rehydrate',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF766B51),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
