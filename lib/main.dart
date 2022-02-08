// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _handleTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Clip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: const Color.fromRGBO(15, 23, 42, 1.0),
        actions: [
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.account_circle_outlined),
            color: const Color.fromRGBO(15, 23, 42, 1.0),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            MoviesRow(
              key: UniqueKey(),
            ),
            MoviesRow(
              key: UniqueKey(),
            ),
            MoviesRow(
              key: UniqueKey(),
            ),
            MoviesRow(
              key: UniqueKey(),
            ),
            MoviesRow(
              key: UniqueKey(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(241, 245, 249, 1.0),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.question_answer_outlined,
              ),
              label: 'Messages',
              activeIcon: Icon(
                Icons.question_answer_rounded,
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
            activeIcon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
            ),
            label: 'Menu',
            activeIcon: Icon(Icons.menu_rounded),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromRGBO(15, 23, 42, 1.0),
        selectedIconTheme: const IconThemeData(
          color: Color.fromRGBO(15, 23, 42, 1.0),
        ),
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        onTap: _handleTap,
      ),
    );
  }
}

class MoviesRow extends StatefulWidget {
  MoviesRow({Key? key}) : super(key: key);

  @override
  State<MoviesRow> createState() => _MoviesRowState();
}

class _MoviesRowState extends State<MoviesRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '90\'s',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_rounded,
                      size: 24,
                    ),
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            height: 200.0,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Image(
                    image: NetworkImage('https://via.placeholder.com/120x180'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


/**
 *
 * padding: EdgeInsets.symmetric(horizontal: 2.0),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
                  width: 120.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12,
                  ),
                ),
              ],
 */
