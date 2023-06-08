import 'package:beauty/login.dart';
import 'package:beauty/main.dart';
import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/image/logo_2.png', // Đường dẫn đến hình ảnh logo của bạn
                      width: 114,
                      height: 80,
                    ),
                  ),
                  SizedBox(width: 200),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Container(
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
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Image.asset(
                  'assets/image/banner.png',
                  width: 450,
                  height: 100,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 332,
                height: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 184, 180, 168),
                  borderRadius: BorderRadius.circular(55),
                ),
                padding: EdgeInsets.only(left: 30, right: 0, top: 0, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 35),
                    Row(
                      children: [
                        Text(
                          'Thông tin',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 85),
                        Container(
                          child: Text(
                            'Chỉnh sửa',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Họ và tên:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Lê Hà Duy',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Email:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'duylh2011@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Số điện thoại:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '0367748513',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Mật khẩu:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '****************',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 136,
                height: 37,
                decoration: BoxDecoration(
                  color: Color(0xFF766B51),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý đăng xuất tại đây
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Log out',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
