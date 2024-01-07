import 'package:flutter/material.dart';

class OTPSuccess extends StatefulWidget {
  const OTPSuccess({super.key});

  @override
  State<OTPSuccess> createState() => _OTPSuccessState();
}

class _OTPSuccessState extends State<OTPSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Verified',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF424A61),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundColor: Color(0xFFDEE6FB),
                      child: Icon(
                        Icons.check,
                        size: 80,
                        color: Color(0xFF424A61),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Congratulations !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),

              SizedBox(height: 20,),
              Text(
                'You can check the status of your transfer in the history menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF424A61))),
                  onPressed: () {},
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
