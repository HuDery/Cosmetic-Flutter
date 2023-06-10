import 'package:beauty/produc.dart';
import 'package:flutter/material.dart';

import 'ingredientDetails.dart';
import 'main.dart';

class Component {
  final String name;
  final String imagePath;

  Component({required this.name, required this.imagePath});
}

class ComponentListScreen extends StatefulWidget {
  @override
  _ComponentListScreenState createState() => _ComponentListScreenState();
}

class _ComponentListScreenState extends State<ComponentListScreen> {
  final TextEditingController searchController = TextEditingController();
  String searchKeyword = ''; // Từ khóa tìm kiếm

  final List<Component> components = [
    Component(name: 'Water', imagePath: 'assets/image/water.jpg'),
    Component(
      name: 'Alcohol',
      imagePath: 'assets/image/alcohol.png',
    ),
    Component(
      name: 'Hydroxyacetophenon',
      imagePath: 'assets/image/hydroxyacetophenon.png',
    ),
    Component(
      name: 'Disodium EDTA',
      imagePath: 'assets/image/disodiumEDTA.png',
    ),
    Component(
      name: 'Niacinamide',
      imagePath: 'assets/image/niacinamide.jpg',
    ),
    Component(
      name: 'Citric Acid',
      imagePath: 'assets/image/citricacid.jpg',
    ),
    Component(
      name: 'Vitamin A',
      imagePath: 'assets/image/vitaminA.png',
    ),
    Component(
      name: 'Sodium Hyalurona',
      imagePath: 'assets/image/SodiumHyaluronate.png',
    ),
    Component(
      name: 'Vitamin B2',
      imagePath: 'assets/image/vitaminb2.jpg',
    ),
    Component(
      name: 'Vitamin C',
      imagePath: 'assets/image/vitaminC.jpg',
    ),
    Component(
      name: 'Trisiloxane',
      imagePath: 'assets/image/Trisiloxane.png',
    ),
    Component(
      name: 'Tocopherol',
      imagePath: 'assets/image/Tocopherol.jpg',
    ),
    Component(
      name: 'Decanediol',
      imagePath: 'assets/image/Decanediol.jpg',
    ),
    Component(
      name: 'Octoxynol',
      imagePath: 'assets/image/Octoxynol.png',
    ),
    Component(
      name: 'Retinol',
      imagePath: 'assets/image/retinol.jpg',
    ),
  ];

  List<Component> getFilteredComponents() {
    if (searchKeyword.isEmpty) {
      return components; // Trả về toàn bộ danh sách components nếu từ khóa tìm kiếm rỗng
    }

    return components.where((component) {
      return component.name.toLowerCase().contains(searchKeyword.toLowerCase());
    }).toList();
  }

  void handleSearch() {
    setState(() {
      searchKeyword = searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: ((getFilteredComponents().length / 3).ceil() +
            1), // Số hàng + 1 cho phần header
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          if (index == 0) {
            // Phần header
            return Container(
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 15),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
                                );
                              },
                              child: Text(
                                "Trang chủ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766351),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Product(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sản phẩm",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF766351),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Thành phần",
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF766351),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 16),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 345,
                              height: 35,
                              child: TextField(
                                controller: searchController,
                                onChanged: (value) {
                                  handleSearch();
                                },
                                decoration: InputDecoration(
                                  hintText: "Tìm kiếm",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    left: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          ElevatedButton(
                            onPressed: () {
                              handleSearch(); // Thực hiện tìm kiếm
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFA09898),
                            ),
                            child: Text("Tìm"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            // Các hàng của ListView
            final int startIndex = (index - 1) * 3;
            final int endIndex = startIndex + 3;
            final List<Component> rowComponents =
                getFilteredComponents().sublist(
              startIndex,
              endIndex > getFilteredComponents().length
                  ? getFilteredComponents().length
                  : endIndex,
            );

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rowComponents.map((component) {
                return Container(
                  width: 110,
                  height: 170, // Kích thước cố định
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IngredientDetail(
                            tenThanhPhan: component.name,
                            image: component.imagePath,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          component.imagePath,
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 8),
                        Center(
                          child: Text(
                            component.name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
