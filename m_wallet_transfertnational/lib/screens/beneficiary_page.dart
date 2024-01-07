import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/classes/beneficiary.dart';
import 'package:m_wallet_transfertnational/screens/add_beneficiary_page.dart';
import 'package:m_wallet_transfertnational/screens/transfer_screen.dart';
import '../classes/user.dart';
import '../widgets/beneficiary_tile.dart';

class BeneficiaryPage extends StatelessWidget {
  List<Beneficiary> beneficiaries = [
    Beneficiary(id: 1,firstName: 'John',lastName: "Doe", phone: '0612345678',email: "john@doe.com"),
    Beneficiary(id: 2,firstName: 'Jack',lastName: "Sparrow", phone: '0612345678',email: "jack@sp.com"),
    Beneficiary(id: 3,firstName: 'Jane',lastName: "Austen", phone: '0612345678',email: "Jane@doe.com"),

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
                style: const TextStyle(color: Colors.white),
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: beneficiaries.length,
                itemBuilder: (context, index) {
                  return GestureDetector(child: BeneficiaryTile(beneficiary: beneficiaries[index]),onTap:()=>{
                                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TransferScreen(beneficiaries[index]),
                                  ),
                                )
                  } );
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
