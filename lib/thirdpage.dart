// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:andikaputra_uts/apipage.dart';
import 'package:andikaputra_uts/fisrtpage.dart';
import 'package:andikaputra_uts/secondpage.dart';
import 'package:flutter/material.dart';

class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 154, 190, 232),
                        Color.fromARGB(255, 180, 151, 228),
                      ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 75, left: 20, right: 20, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Andika!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Text(
                            "All your information",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "image/Coin.png",
                                width: 25,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "800",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.black,
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.purple[50]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.person_2_outlined),
                          )),
                        SizedBox(width: 25,),
                        Text(
                              "Personal information",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.purple[50]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.compare_arrows_outlined),
                          )),
                        SizedBox(width: 25,),
                        Text(
                              "Transaction history",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.purple[50]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.account_balance_wallet_outlined),
                          )),
                        SizedBox(width: 25,),
                        Text(
                              "Payment",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.purple[50]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.my_library_books_outlined),
                          )),
                        SizedBox(width: 25,),
                        Text(
                              "Terms of use",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),color: Colors.purple[50]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.manage_search_sharp),
                          )),
                        SizedBox(width: 25,),
                        Text(
                              "Support",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> secondpage()));
                      },
                    child: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.list_alt,
                    color: Colors.black,
                    size: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> apipage()));
                      },
                    child: Icon(
                      Icons.bar_chart_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.person_2_outlined,
                    color: Colors.blue[100],                
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
