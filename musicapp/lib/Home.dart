import "package:flutter/material.dart";
import "Gallery.dart";

import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const Song());
}

class Song extends StatelessWidget {
  const Song({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Music(),
    );
  }
}

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State createState() => MusicState();
}

class MusicState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const SizedBox(
            height: 570,
            child: Image(
              image: AssetImage("image/music1.png"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 140),
                    child: Text(
                      "Dancing between",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 72),
                    child: Text(
                      "The shadows",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 128),
                    child: Text(
                      "Of rhythm",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
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
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Gallery(),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 370),
                      height: 47,
                      width: 261,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(19, 19, 19, 1)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 500),
                    height: 47,
                    width: 261,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(255, 46, 0, 1),
                      ),
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(19, 19, 19, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 46, 0, 1),
                        ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 70),
                    child: Center(
                      child: Text(
                        "by continuing you agree to terms",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 54),
                    child: Center(
                      child: Text(
                        "of services and Privacy policy",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
