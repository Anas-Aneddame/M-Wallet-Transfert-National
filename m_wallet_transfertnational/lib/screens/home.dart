import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:intl/intl.dart';
import 'package:m_wallet_transfertnational/screens/Transactions_page.dart';
import 'package:m_wallet_transfertnational/screens/beneficiary_page.dart';
import 'package:m_wallet_transfertnational/widgets/transaction_tile.dart';
import '../classes/transaction.dart';
import '../widgets/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var height, width;
  int _pageIndex = 0;
  /*final List<Widget> _pages = [
    Home(),
    TransactionsPage(),
    Home()
  ]; */
  List<Transaction> transactions = [
    Transaction(
      senderName: 'John Doe',
      receiverName: 'Jane Doe',
      date: DateTime.now(),
      status: 'sent',
      amount: 100.00,
    ),
    Transaction(
      senderName: 'Alice',
      receiverName: 'Bob',
      date: DateTime.now().subtract(Duration(days: 1)),
      status: 'received',
      amount: 50.00,
    ),
    Transaction(
      senderName: 'Charlie',
      receiverName: 'David',
      date: DateTime.now().subtract(Duration(days: 2)),
      status: 'pending',
      amount: 75.50,
    ),
    Transaction(
      senderName: 'Eve',
      receiverName: 'Frank',
      date: DateTime.now().subtract(Duration(days: 3)),
      status: 'sent',
      amount: 120.75,
    ),
    Transaction(
      senderName: 'Grace',
      receiverName: 'Henry',
      date: DateTime.now().subtract(Duration(days: 4)),
      status: 'received',
      amount: 90.25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd MMM yyyy').format(now);

    return Scaffold(
        backgroundColor: Color(0xFF424A61),
        /*bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xFFDEE6FB),
          color: Color(0xFF424A61),
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _pageIndex = index;
            });
          },
          items: const [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.compare_arrows,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
        ),*/
        body: SafeArea(
            child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'Hi , Anas !',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                        GestureDetector(
                          onTap: () {
                            print("Container clicked!");
                          },
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xFFDEE6FB),
                            child: Icon(
                              Icons.person,
                              size: 50,
                              color: Color(0xFF424A61),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BeneficiaryPage(),
                                  ),
                                );
                                print("Container clicked!");
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFFDEE6FB),
                                  child: Icon(
                                    Icons.compare_arrows,
                                    size: 50,
                                    color: Color(0xFF424A61),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Transfer Money',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const TransactionsPage(),
                                  ),
                                );
                                print("Container clicked!");
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFFDEE6FB),
                                  child: Icon(
                                    Icons.history,
                                    size: 40,
                                    color: Color(0xFF424A61),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'View Transfers',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("Container clicked!");
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xFFDEE6FB),
                                  child: Icon(
                                    Icons.more_horiz,
                                    size: 50,
                                    color: Color(0xFF424A61),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'More',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recent Transactions',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TransactionsPage(),
                              ),
                            );
                            print("Container clicked!");
                          },
                          child: const Row(
                            children: [
                              Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                          child: ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          return TransactionTile(
                              transaction: transactions[index]);
                        },
                      )),
                    )
                  ]),
                ),
              )
            ],
          ),
          Positioned(top: 80, left: width / 2 - 160, child: const UserCard()),
        ])));
  }
}
