// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'dart:convert';

import 'package:andikaputra_uts/secondpage.dart';
import 'package:andikaputra_uts/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class apipage extends StatelessWidget {
  apipage({super.key});

  List<dynamic> user = [];

  Future getItems() async {
    var response =
        await http.get(Uri.https('randomuser.me', '/api/', {'results': '100'}));

    var jsonData = jsonDecode(response.body);

    user = jsonData['results'];
    print(user.length);
    return jsonData;
  }

  int plusOne(int x) {
    int hasil = x + 1;
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getItems(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Leaderboard : ",
                            style: GoogleFonts.ptSans(
                              color: Color.fromARGB(255, 58, 152, 195),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // -------------------------------
                          for (int i = 0; i < user.length; i++)
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 154, 190, 232),
                                        Color.fromARGB(255, 180, 151, 228),
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 1,
                                            spreadRadius: 1)
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.purple[100]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Color.fromARGB(
                                                        255, 175, 135, 241)),
                                                child: Center(
                                                    child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 8.0,
                                                      horizontal: 12),
                                                  child: Text(
                                                    plusOne(i).toString(),
                                                    style: GoogleFonts.ptSans(
                                                        color: Colors.white),
                                                  ),
                                                )),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Text(
                                                user[i]['name']['last'],
                                                style: GoogleFonts.ptSans(
                                                    color: Color.fromARGB(
                                                        255, 24, 90, 113),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                user[i]['location']['street']
                                                        ['number']
                                                    .toString(),
                                                style: GoogleFonts.ptSans(
                                                    color: Color.fromARGB(
                                                        255, 24, 90, 113),
                                                    fontSize: 10),
                                              ),
                                              Text(
                                                " XP",
                                                style: GoogleFonts.ptSans(
                                                    color: Color.fromARGB(
                                                        255, 24, 90, 113),
                                                    fontSize: 10),
                                              ),
                                            ],
                                          )
                                        ]),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 175, 135, 241),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 6),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => secondpage()));
                              },
                              child: Icon(
                                Icons.home,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.list_alt,
                              color: Colors.black,
                              size: 30,
                            ),
                            Icon(
                              Icons.bar_chart_rounded,
                              color: Colors.blue[100],
                              size: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => thirdpage()));
                              },
                              child: Icon(
                                Icons.person_2_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
