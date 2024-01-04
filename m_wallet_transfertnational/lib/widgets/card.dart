import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      height: 180,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 334,
              height: 180,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.05, -1.00),
                  end: Alignment(-0.05, 1),
                  colors: [Color(0xFFA3B7DD), Color(0xFF3A49F9)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 334,
              height: 180,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 334,
                      height: 180,
                      decoration: ShapeDecoration(
                        color: Color.fromARGB(90, 58, 74, 249),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -144.20,
                    top: 97.83,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: 340.36,
                        height: 221.09,
                        decoration: const ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 137.84,
                    top: -138.91,
                    child: Opacity(
                      opacity: 0.08,
                      child: Container(
                        width: 340.36,
                        height: 221.09,
                        decoration: const ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 31.81,
            top: 142.83,
            child: SizedBox(
              width: 174.95,
              height: 12.72,
              child: Opacity(
                opacity: 0.90,
                child: Text(
                  '5282 3456 7890 1289',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 254.48,
            top: 24.46,
            child: Container(
              width: 47.71,
              height: 35.14,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 47.71,
                      height: 35.14,
                      child: const Stack(children: []),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 32,
            top: 51,
            child: SizedBox(
              width: 200,
              height: 25,
              child: Text(
                '5,750,20 MAD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 31.81,
            top: 29.35,
            child: SizedBox(
              width: 133.60,
              height: 12.72,
              child: Opacity(
                opacity: 0.54,
                child: Text(
                  'Current Balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
