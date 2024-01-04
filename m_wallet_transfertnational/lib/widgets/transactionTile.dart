import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../classes/transaction.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('d MMM yyyy').format(transaction.date);
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
                    Icons.compare_arrows,
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
                      transaction.receiverName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(formattedDate,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ))
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${transaction.status == 'sent' ? '-' : '+'}${transaction.amount} MAD',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(transaction.status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ))
              ],
            )
          ]),
        ));
  }
}
