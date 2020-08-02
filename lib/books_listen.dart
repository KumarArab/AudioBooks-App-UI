import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';
import 'book_data.dart';
import 'book_model.dart';

class BooksListen extends StatelessWidget {
  List<int> Heights = [];
  List<Book> bookList;
  final int index;
  final String section;

  BooksListen({this.index, this.section});

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < MediaQuery.of(context).size.width / 9.3; i++) {
      Heights.add(Random().nextInt(50));
    }
    if (section == "Continue Reading") {
      bookList = recentBooks;
    } else if (section == "Discover More") {
      bookList = allBooks;
    }
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bookList[index].coverImage),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.1),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 35,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 25,
                                offset: Offset(8, 8),
                                spreadRadius: 3,
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 25,
                                offset: Offset(-8, -8),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              // "assets/images/0.jfif",
                              bookList[index].coverImage,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: new LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.3),
                                Colors.transparent,
                                Colors.black.withOpacity(0.3),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    // "Conjure Women",
                    bookList[index].name,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    //"By Afia Atakora",
                    "By ${bookList[index].name}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfffff8ee),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Chapter 2",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  itemBuilder: (ctx, i) => Bars(
                                    height: Heights[i].toDouble(),
                                    color: i < Heights.length / 2
                                        ? Color(0xffc44536)
                                        : Colors.redAccent.withOpacity(0.5),
                                  ),
                                  itemCount: Heights.length,
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("01:33"),
                                  Text("08:47"),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.grey,
                                  size: 32,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.skip_previous,
                                  color: Colors.grey,
                                  size: 38,
                                ),
                                onPressed: () {},
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 16,
                                  right: 15,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffc44536),
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.pause,
                                    color: Colors.white,
                                    size: 48,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.skip_next,
                                  color: Colors.grey,
                                  size: 38,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                  size: 32,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Bars extends StatelessWidget {
  final double height;
  final Color color;

  Bars({this.height, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      color: Color(0xfffff8ee),
      margin: EdgeInsets.symmetric(horizontal: 2),
      child: Center(
        child: Container(
          height: height,
          color: color,
          width: 4,
        ),
      ),
    );
  }
}
