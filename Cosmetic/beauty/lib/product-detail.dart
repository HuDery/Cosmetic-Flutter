import 'package:beauty/produc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductDetail extends StatelessWidget {
  final List<String> shopeeLinks = [
    'https://shopee.vn/shop1',
    'https://shopee.vn/shop2',
    'https://shopee.vn/shop3',
  ];

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
                children: [
                  Spacer(), // Thêm Spacer để đẩy hình ảnh đến đầu màn hình
                  Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/fuprojectteammanagement.appspot.com/o/images%2FLOGO%20EXE%20(1).png?alt=media&token=d0ed450d-14ba-4c8c-b055-2c08dadc042d&_gl=1*1sht7f8*_ga*NTE2NDgwMTcwLjE2Nzc2NTk3OTY.*_ga_CW55HF8NVT*MTY4NjE0MjU2MC4xNi4xLjE2ODYxNDI2MTAuMC4wLjA.',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Spacer(), // Thêm Spacer để đẩy CircleAvatar đến đầu màn hình
                  Container(
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
                  Spacer(), // Thêm Spacer để đẩy CircleAvatar đến cuối màn hình
                ],
              ),
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
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          'https://biyokea.com.vn/uploads/shops/facemassage/dau-massage-mat-m006-200ml-1.jpg',
                          width: 450,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '\nTinh dầu masage mặt Calming - M006 Êm dịu',
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Image.asset(
                              'assets/image/shoppe.png',
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: Text('Giá bán: 220,000'),
                            ),
                            SizedBox(width: 0),
                            Flexible(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Màu nền
                                  padding: EdgeInsets.all(
                                      0), // Xóa khoảng cách trong nút
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Đến nơi bán',
                                    style: TextStyle(
                                      color: Colors.black, // Màu chữ
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Image.asset(
                              'assets/image/lazada.png',
                              width: 80,
                              height: 40,
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: Text('Giá bán: 190,000'),
                            ),
                            SizedBox(width: 0),
                            Flexible(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // Màu nền
                                  padding: EdgeInsets.all(
                                      0), // Xóa khoảng cách trong nút
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Đến nơi bán',
                                    style: TextStyle(
                                      color: Colors.black, // Màu chữ
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'TỔNG QUAN VỀ SẢN PHẨM',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF766B51),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Căn trái đoạn văn bản
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(
                              25), // Margin top, bottom, left, right của container bên trong = 20
                          decoration: BoxDecoration(
                            color: Colors.white, // Màu nền của container
                            borderRadius:
                                BorderRadius.circular(10), // Độ bo góc là 10
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Màu bóng xám
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // Điều chỉnh vị trí bóng
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Căn trái đoạn văn bản
                            children: [
                              Text(
                                'Công dụng',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Tinh dầu hoa hồng có hương thơm nồng vậy nên loại tinh dầu thiên nhiên này luôn được sử dụng để giảm stress, chống trầm cảm và giúp ngủ ngon là một chất xúc tác tinh thần cực hiệu quả, có tác dụng kích thích tinh thần thư giãn, phấn chấn. Ngoài ra khi kết hợp với các dầu nền tự nhiên và vitamin E còn có tác dụng cân bằng độ ẩm, se khít lỗ chân lông, cho da sự êm dịu mịn màng.',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      15), // Tạo khoảng cách giữa các đoạn văn bản
                              Text(
                                'Cách sử dụng:',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Sau khi rửa mặt sạch, lau khô, cho vài giọt dầu vào hai lòng bàn tay xoa đều và đưa lên massage vùng da mặt và cổ 5-10 phút, rửa lại bằng nước ấm. Lưu ý tránh để rơi tinh dầu vào mắt hoặc miệng.',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Căn giữa theo chiều ngang
                          children: [
                            Text(
                              "KẾT QUẢ PHÂN TÍCH SẢN PHẨM",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF766B51),
                              ),
                            ),
                            SizedBox(height: 80)
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phân tích nhanh về sản phẩm',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(
                                  height: 10), // Khoảng cách giữa các đoạn text
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Không chứa paraben',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Không chứa sulfate',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Không có cồn',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Không chứa silicone',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'An toàn với da mụn',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Thành phần tối thiểu',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Không chứa chất gây dị ứng (EU)',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 2,
                                width: 350, // Độ dài của dấu gạch ngang
                                margin: EdgeInsets.only(
                                    left: 0), // Canh trái dấu gạch ngang
                                color: Colors.lightGreen,
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Tác dụng & Thành phần đáng chú ý',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF766B51),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.wb_sunny,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Chống nắng",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF766B51),
                                        ),
                                      ),
                                      Text(
                                        " từ (1) thành phần: ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF766B51),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  const Row(
                                    children: [
                                      Text(
                                        "Titanium Dioxide",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Titanium Dioxide",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.hourglass_bottom,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Chống lão hóa",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " từ (1) thành phần: ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF766B51),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  const Row(
                                    children: [
                                      Text(
                                        "Titanium Dioxide",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.diamond_outlined,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Làm sáng da",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " từ (1) thành phần: ",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF766B51),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  const Row(
                                    children: [
                                      Text(
                                        "Titanium Dioxide",
                                        style: TextStyle(
                                          backgroundColor: Color(0xFF766B51),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 25),
                                  const Column(
                                    children: [
                                      Text(
                                        "Đánh giá tác động của thành phần với từng loại da",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF766B51),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.wind_power,
                                            color: Colors.blue,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Da khô",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF766B51),
                                            ),
                                          ),
                                          const SizedBox(width: 100),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 219,
                                                            217, 217))),
                                            onPressed: null,
                                            child: const Text("None"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.water_drop,
                                            color: Colors.blue,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Da dầu",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF766B51),
                                            ),
                                          ),
                                          const SizedBox(width: 100),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 219,
                                                            217, 217))),
                                            onPressed: null,
                                            child: const Text("None"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.energy_savings_leaf_outlined,
                                            color: Colors.blue,
                                          ),
                                          const SizedBox(width: 10),
                                          const Text(
                                            "Da nhạy cảm",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF766B51),
                                            ),
                                          ),
                                          const SizedBox(width: 50),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 148,
                                                            209, 240))),
                                            onPressed: null,
                                            child: const Text("1"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25),
                                  const Column(
                                    children: [
                                      Text(
                                        "Độ an toàn của thành phần (theo thang đánh giá EWG)",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF766B51),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 25),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 148,
                                                            209, 240))),
                                            onPressed: null,
                                            child: const Text(""),
                                          ),
                                          const SizedBox(width: 100),
                                          const Text(
                                            "Nguy cơ thấp",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFF766B51),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.orange)),
                                            onPressed: null,
                                            child: const Text(""),
                                          ),
                                          const SizedBox(width: 100),
                                          const Text(
                                            "Rủi ro vừa phải",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFF766B51),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red)),
                                            onPressed: null,
                                            child: const Text(""),
                                          ),
                                          const SizedBox(width: 100),
                                          const Text(
                                            "Rủi ro cao",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFF766B51),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color.fromARGB(255, 219,
                                                            217, 217))),
                                            onPressed: null,
                                            child: const Text(""),
                                          ),
                                          const SizedBox(width: 100),
                                          const Text(
                                            "Không xác định",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFF766B51),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
