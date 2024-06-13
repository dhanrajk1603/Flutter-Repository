import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State createState() => PlayerState();
}

class PlayerState extends State {
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Image(
            image: AssetImage(
              "image/player1.png",
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    margin: const EdgeInsets.only(top: 180),
                    child: Text(
                      "Alone in the Abyss",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1),
                      ),
                    )),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 220),
                  child: Text(
                    "Youlakou",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 270, right: 10),
                    child: const Image(
                      image: AssetImage("image/player3.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 350, left: 17),
                    child: Text(
                      "Dynamic Warmup |",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(top: 350, right: 10),
                    child: Text(
                      "4 min",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        margin: const EdgeInsets.only(top: 400),
                        height: 7,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(230, 154, 21, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        margin: const EdgeInsets.only(top: 400),
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(217, 217, 217, 0.19),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 490),
                    child: const Image(
                      image: AssetImage("image/player2.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 490),
                    child: const Image(
                      image: AssetImage("image/player4.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 490),
                    child: const Image(
                      image: AssetImage("image/player5.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 490),
                    child: const Image(
                      image: AssetImage("image/player6.png"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 490),
                    child: const Image(
                      image: AssetImage("image/player7.png"),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_max_sharp,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "profile"),
        ],
      ),
    );
  }
}
