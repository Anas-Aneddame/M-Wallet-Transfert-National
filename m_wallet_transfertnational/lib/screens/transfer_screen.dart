import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/classes/beneficiary.dart';
import 'package:m_wallet_transfertnational/screens/Otp_verification_screen.dart';

class TransferScreen extends StatefulWidget {
  final Beneficiary beneficiary;
  const TransferScreen(this.beneficiary, {super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    const Widget SPACING = SizedBox(height: 50.0);
    const List<String> list = <String>['DONOR', 'BENEFICIARY', 'BOTH'];
    String dropdownValue = list.first;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Beneficiary',
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
              TextFormField(
                initialValue: widget.beneficiary.firstName +
                    " " +
                    widget.beneficiary.lastName,
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: 'Beneficiary',
                  labelStyle: TextStyle(color: Colors.white),
                ),
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
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SPACING,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownMenu<String>(
                    label: Text(
                      "Fees",
                      style: TextStyle(color: Colors.white),
                    ),
                    textStyle: TextStyle(color: Colors.white),
                    menuStyle: MenuStyle(
                        shadowColor:
                            MaterialStatePropertyAll<Color>(Colors.red)),
                    initialSelection: list.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                ],
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
                        builder: (context) => const OTPverification(),
                      ),
                    );
                  },
                  child: const Text(
                    'Next',
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
