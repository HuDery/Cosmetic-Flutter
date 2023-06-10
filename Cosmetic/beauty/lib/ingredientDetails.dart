import 'package:flutter/material.dart';

class IngredientDetail extends StatelessWidget {
  final String tenThanhPhan;
  final String image;

  const IngredientDetail(
      {super.key, required this.tenThanhPhan, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50, // Đặt độ cao của AppBar
        backgroundColor: Colors.white, // Chuyển background thành màu trắng
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300], // Đổi màu background của body thành màu xám
          padding: const EdgeInsets.fromLTRB(20, 40, 20,
              20), // Margin top, bottom, left, right của container = 20
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
                  borderRadius: BorderRadius.circular(10), // Độ bo góc là 10
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Màu bóng xám
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // Điều chỉnh vị trí bóng
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Căn trái đoạn văn bản
                  children: [
                    const Text(
                      'Kết quả phân tích thành phần',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                        height: 15), // Tạo khoảng cách giữa các đoạn văn bản
                    const Text(
                      'Phân tích thành công, hãy kiểm tra kết quả bên dưới',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                        height: 15), // Tạo khoảng cách giữa các đoạn văn bản
                    const Text(
                      'Thành phần tìm thấy:',
                      style: TextStyle(fontSize: 17),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "$image",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    SizedBox(
                        height: 15), // Tạo khoảng cách giữa các đoạn văn bản
                    Text(
                      "$tenThanhPhan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Căn giữa theo chiều ngang
                children: [
                  Text(
                    "KẾ QUẢ PHÂN TÍCH THÀNH PHẦN",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10), // Khoảng cách giữa các đoạn text
                    const SizedBox(height: 7),
                    const Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Tạo độ ẩm cho da',
                          style: TextStyle(fontSize: 17),
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
                          style: TextStyle(fontSize: 17),
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
                          'Không phải là chất gây dị ứng (EU)',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 2,
                      width: 350, // Độ dài của dấu gạch ngang
                      margin:
                          EdgeInsets.only(left: 0), // Canh trái dấu gạch ngang
                      color: Colors.lightGreen,
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Tác dụng & Thành phần đáng chú ý',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.wb_sunny,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Chống nắng",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " từ (1) thành phần: ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "$tenThanhPhan",
                              style: TextStyle(backgroundColor: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.hourglass_bottom,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Chống lão hóa",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " từ (1) thành phần: ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "$tenThanhPhan",
                              style: TextStyle(backgroundColor: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.diamond_outlined,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Làm sáng da",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " từ (1) thành phần: ",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "$tenThanhPhan",
                              style: TextStyle(backgroundColor: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        const Column(
                          children: [
                            Text(
                              "Đánh giá tác động của thành phần với từng loại da",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(width: 100),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 148, 209, 240))),
                                  onPressed: null,
                                  child: const Text(""),
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
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(width: 100),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 148, 209, 240))),
                                  onPressed: null,
                                  child: const Text(""),
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
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(width: 60),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.orange)),
                                  onPressed: null,
                                  child: const Text(""),
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
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 148, 209, 240))),
                                  onPressed: null,
                                  child: const Text(""),
                                ),
                                const SizedBox(width: 100),
                                const Text(
                                  "Nguy cơ thấp",
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.orange)),
                                  onPressed: null,
                                  child: const Text(""),
                                ),
                                const SizedBox(width: 100),
                                const Text(
                                  "Rủi ro vừa phải",
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red)),
                                  onPressed: null,
                                  child: const Text(""),
                                ),
                                const SizedBox(width: 100),
                                const Text(
                                  "Rủi ro cao",
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(
                                                  255, 219, 217, 217))),
                                  onPressed: null,
                                  child: const Text(""),
                                ),
                                const SizedBox(width: 100),
                                const Text(
                                  "Không xác định",
                                  style: TextStyle(fontSize: 17),
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
      ),
    );
  }
}
