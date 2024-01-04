import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/screens/add_beneficiary_page.dart';
import '../classes/user.dart';
import '../widgets/beneficiary_tile.dart';

class BeneficiaryPage extends StatelessWidget {
  List<User> beneficiaries = [
    User(userName: 'Anas', phoneNumber: '0612345678'),
    User(userName: 'Joe', phoneNumber: '0612345678'),
    User(userName: 'Eve', phoneNumber: '0612345678'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Beneficiary'),
        centerTitle: true,
        backgroundColor: const Color(0xFF424A61),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set underline color to white
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: 'Search Beneficiary',
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: beneficiaries.length,
                itemBuilder: (context, index) {
                  return BeneficiaryTile(beneficiary: beneficiaries[index]);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF424A61),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BeneficiaryAdd(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
