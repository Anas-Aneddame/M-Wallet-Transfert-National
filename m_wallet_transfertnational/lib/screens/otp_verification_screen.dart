import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/screens/otp_success_screen.dart';

class OTPverification extends StatefulWidget {
  const OTPverification({super.key});

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  @override
  Widget build(BuildContext context) {
    const Widget SPACING = SizedBox(
      height: 60,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP verification',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF424A61),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
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
                        Icons.lock,
                        size: 80,
                        color: Color(0xFF424A61),
                      ),
                    ),
                  )
                ],
              ),
              SPACING,
              TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  label: Text("OTP"),
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SPACING,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF424A61))),
                  onPressed: () {
                                       Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OTPSuccess(),
                      ),
                    );
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF424A61))),
                  onPressed: () {},
                  child: const Text(
                    'Cancel',
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
