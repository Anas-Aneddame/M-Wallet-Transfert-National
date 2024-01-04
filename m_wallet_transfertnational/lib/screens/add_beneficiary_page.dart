import 'package:flutter/material.dart';

class BeneficiaryAdd extends StatefulWidget {
  const BeneficiaryAdd({super.key});

  @override
  State<BeneficiaryAdd> createState() => _BeneficiaryAddState();
}

class _BeneficiaryAddState extends State<BeneficiaryAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Beneficiary'),
        centerTitle: true,
        backgroundColor: const Color(0xFF424A61),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'First Name',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 40.0),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Last Name',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 40.0),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 40.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF424A61))),
                onPressed: () {},
                child: const Text(
                  'Add Beneficiary',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
