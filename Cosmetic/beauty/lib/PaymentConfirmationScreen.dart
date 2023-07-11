import 'package:flutter/material.dart';
import 'PaymentSuccessScreen.dart';

class PaymentConfirmationScreen extends StatefulWidget {
  @override
  _PaymentConfirmationScreenState createState() =>
      _PaymentConfirmationScreenState();
}

class _PaymentConfirmationScreenState extends State<PaymentConfirmationScreen> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/image/thanh toán.jpg'),
            ),
          ),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Tôi đồng ý với ',
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Điều khoản'),
                      content: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1. Mức chuyển khoản thấp nhất là 20.000 VNĐ'),
                          SizedBox(height: 20),
                          Text(
                              '2. Nội dung chuyển khoảng sẽ là email đăng kí tài khoản + tên app,\nVD: duy@email.com beaute'),
                          SizedBox(height: 20),
                          Text(
                              '3. Chúng tôi sẽ không chịu trách nhiệm cho hành vi spam hoặc vi phạm quy tắc số 1'),
                          SizedBox(height: 20),
                          Text(
                              '4. Hãy đợi 3p-4p bạn sẽ có thể sử dụng gói premium'),
                          SizedBox(height: 20),
                          Text(
                              '5. Đối với trường hợp bạn chưa được kích hoạt tài khoản premium hãy liên hệ với chung tôi qua email hoặc số điện thoại phía dưới'),
                          Text(
                              '𝖻𝖾𝖺𝗎𝗍𝖾𝗌𝗂𝗇𝖼𝖾𝟤𝟢𝟤𝟥@𝗀𝗆𝖺𝗂𝗅.𝖼𝗈𝗆 & 𝟢𝟥𝟨𝟩.𝟦𝟪𝟤.𝟧𝟣𝟥'),
                        ],
                      ), // Tăng khoảng cách nội dung với viền
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Đóng'),
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                );
              },
              child: RichText(
                text: TextSpan(
                  text: 'điều khoản ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Text(
              'bạn đưa ra',
              style: TextStyle(fontSize: 20),
            ),
          ]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isAgreed,
                onChanged: (value) {
                  setState(() {
                    isAgreed = value!;
                  });
                },
              ),
              Text('Đồng ý'),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 200,
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
                if (isAgreed) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentSuccessScreen(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Thông báo'),
                        content: Text(
                          'Bạn phải đồng ý với điều khoản để tiếp tục thanh toán!',
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Đóng'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
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
    );
  }
}
