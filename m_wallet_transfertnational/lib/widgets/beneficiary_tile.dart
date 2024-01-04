import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/classes/user.dart';

class BeneficiaryTile extends StatelessWidget {
  final User beneficiary;

  const BeneficiaryTile({super.key, required this.beneficiary});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(0xFF292929),
              borderRadius: BorderRadius.circular(16)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFDEE6FB),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Color(0xFF424A61),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      beneficiary.userName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(beneficiary.phoneNumber,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ))
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
