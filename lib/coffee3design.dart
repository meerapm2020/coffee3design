import 'package:coffee3design/database.dart';
import 'package:flutter/material.dart';

class Coffee3Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 25);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 56, 55, 55),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                            height: 125,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image:
                                    AssetImage(DataBase.myList[index]["image"]),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                DataBase.myList[index]["name"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              SizedBox(height: 35),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    DataBase.myList[index]["price"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 78, 75, 75),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "+",
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                "---------------------------------------------------------------",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.brown,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          "Apply Coupon code",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Charges",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.currency_rupee, color: Colors.white, size: 15),
                  Text("49", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Taxes",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.currency_rupee, color: Colors.white, size: 15),
                  Text("64.87", style: TextStyle(color: Colors.white)),
                ],
              ),
              Text(
                "---------------------------------------------------------------",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Grand Total",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.currency_rupee, color: Colors.white, size: 15),
                  Text("1009.87",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        "PAY NOW",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SizedBox(height: 20),
              BottomNavigationBar(
                  backgroundColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 53, 53, 53),
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 53, 53, 53),
                        ),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.notifications,
                          color: Color.fromARGB(255, 53, 53, 53),
                        ),
                        label: ""),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
