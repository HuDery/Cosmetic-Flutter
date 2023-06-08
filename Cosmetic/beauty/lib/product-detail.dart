import 'package:beauty/produc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductDetail extends StatelessWidget {
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
                    width: 500,
                    height: 500,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 20,
                          child: Image.network(
                            'https://kyo.vn/wp-content/uploads/2019/10/Charlotte-tilbury-coachella-coral.jpg',
                            width: 450,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              'Son Charlotte Tilbury Matte Revolution màu Coachella coral – Hồng san hô',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF766B51),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
                                'Kết quả phân tích thành phần',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      15), // Tạo khoảng cách giữa các đoạn văn bản
                              Text(
                                'Phân tích thành công, hãy kiểm tra kết quả bên dưới',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      15), // Tạo khoảng cách giữa các đoạn văn bản
                              Text(
                                'Thành phần tìm thấy:',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766B51),
                                ),
                              ),
                              SizedBox(
                                  height:
                                      15), // Tạo khoảng cách giữa các đoạn văn bản
                              Text(
                                'Titanium Dioxide',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
                              "KẾT QUẢ PHÂN TÍCH THÀNH PHẦN",
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
                                'Phân tích nhanh về thành phần',
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
