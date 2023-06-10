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
        appBar: AppBar(
          backgroundColor: Colors.white, // Đổi màu thành màu trắng
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(children: [
              SizedBox(height: 10),
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
                          'https://callmeduy-production-s3.s3.ap-southeast-1.amazonaws.com/a13904230f8e64cb38212b233c609a80_cb2d6fed00.jpg',
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
                                        '\nNeutrogena Hydro Boost Activating Essence Lotion',
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
                              child: Text('Giá bán: 355,000'),
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
                              child: Text('Giá bán: 355,000'),
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
                                'Công dụng của Tinh chất dưỡng ẩm Neutrogena Hydro Boost Activating Essence Lotion:\n - Cấp ẩm tức thì cho làn da, thấm sâu hơn trong lớp biểu bì da.\n - Tăng cường độ ẩm và làm mềm da, tăng cường khả năng hấp thụ các dưỡng chất.\n - Giúp da trông căng mọng, sáng rỡ và khỏe mạnh lâu dài.',
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
                                '1. Sáng và tối: thoa đều lên da sạch và khô ngay sau bước làm sạch.\n 2. Cho 1 ít tinh chất vào lòng bàn tay, ấn hai lòng bàn tay vào nhau để kích hoạt các hạt ngọc H.A. Thoa lên má, trán và cằm. Thoa đều từ giữa mặt ra ngoài.\n 3. Nên sử dụng hàng ngày để đạt hiệu quả tốt nhất.',
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
                                    Icons.check_circle_outline,
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
                                    Icons.check_circle_outline,
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
                                    Icons.cancel_outlined,
                                    color: Colors.red,
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
                                    Icons.check_circle_outline,
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
                                    Icons.check_circle_outline,
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
                                    Icons.cancel_outlined,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Dành cho tất cả loại da',
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
                                    Icons.check_circle_outline,
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
                                            "Da hỗn hợp",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xFF766B51),
                                            ),
                                          ),
                                          const SizedBox(width: 60),
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
            // Add your content here
          ),
        ),
      ),
    );
  }
}
