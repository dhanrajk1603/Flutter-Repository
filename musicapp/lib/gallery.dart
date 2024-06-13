import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "player.dart";

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State createState() => GalleryState();
}

class GalleryState extends State {
  int noindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Image(
            image: AssetImage("image/music2.png"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 225, left: 20),
            child: Text(
              "A.L.O.N.E",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 280, left: 22),
            height: 37,
            width: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: const Color.fromRGBO(255, 46, 0, 1),
            ),
            child: Center(
              child: Text(
                "Subscribe",
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(19, 19, 19, 1)),
              ),
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 40,
                      ),
                      height: 7,
                      width: 21,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromRGBO(255, 61, 0, 1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 40, left: 3),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromRGBO(159, 159, 159, 1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 40,
                        left: 3,
                      ),
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: const Color.fromRGBO(159, 159, 159, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),
                    child: Text(
                      "Discography",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(248, 162, 69, 1),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 210, left: 16),
                          height: 140,
                          width: 119,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("image/gallery1.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 35),
                              child: Text(
                                "Dead inside",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "2020",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Player(),
                                ),
                              );
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 210, left: 18),
                            height: 140,
                            width: 119,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("image/gallery2.png"),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 60),
                              child: Text(
                                "Alone",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "2023",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 210,
                          ),
                          height: 140,
                          width: 119,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("image/gallery3.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              child: Text(
                                "Heartless ",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "2023",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 145, left: 20),
                    child: Text(
                      "Popular singles",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(203, 200, 200, 1),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 140, right: 20),
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    height: 72,
                    width: 62,
                    child: const Image(
                      image: AssetImage("image/gallery4.png"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "We Are Chaos",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 15),
                        child: Text(
                          "2023 * Easy Living",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    height: 72,
                    width: 62,
                    child: const Image(
                      image: AssetImage("image/gallery5.png"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 2),
                        child: Text(
                          "Smile",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 12,
                        ),
                        child: Text(
                          "2023 * Berrechid",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            noindex = index;
          });
        },
        currentIndex: noindex,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_rounded,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete_outline_rounded), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
