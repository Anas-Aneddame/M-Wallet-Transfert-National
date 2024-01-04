import 'package:flutter/material.dart';
import 'package:m_wallet_transfertnational/classes/transaction.dart';
import 'package:m_wallet_transfertnational/widgets/transaction_tile.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  String selectedFilter = 'All';
  DateTime now = DateTime.now();

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

  List<Transaction> filterTransactions(String filter) {
    switch (filter) {
      case 'All':
        return transactions;
      case 'Sent':
        return transactions.where((t) => t.status == 'sent').toList();
      case 'Received':
        return transactions.where((t) => t.status == 'received').toList();
      case 'Pending':
        return transactions.where((t) => t.status == 'pending').toList();
      default:
        return [];
    }
  }

  List<Transaction> filterByDate(
      List<Transaction> transactions, DateTime date) {
    return transactions.where((t) => t.date.day == date.day).toList();
  }

  List<Transaction> groupTransactionsByDate() {
    DateTime now = DateTime.now();
    List<Transaction> todayTransactions = filterTransactions(selectedFilter)
        .where((t) => t.date.day == now.day)
        .toList();
    List<Transaction> yesterdayTransactions = filterTransactions(selectedFilter)
        .where((t) => t.date.day == now.subtract(Duration(days: 1)).day)
        .toList();
    List<Transaction> allTimeTransactions = filterTransactions(selectedFilter);
    List<Transaction> filteredAllTime = allTimeTransactions
        .where((t) =>
            t.date.day != now.day &&
            t.date.day != now.subtract(Duration(days: 1)).day)
        .toList();

    return [
      if (selectedFilter == 'All') ...filteredAllTime,
      if (selectedFilter == 'All' || selectedFilter == 'Received')
        ...todayTransactions,
      if (selectedFilter == 'All' || selectedFilter == 'Received')
        ...yesterdayTransactions,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
        centerTitle: true,
        backgroundColor: const Color(0xFF424A61),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(child: buildFilterText('All')),
                    Flexible(child: buildFilterText('Sent')),
                    Flexible(child: buildFilterText('Received')),
                    Flexible(child: buildFilterText('Pending')),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: groupTransactionsByDate().length + 3,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _buildHeader('Today');
                    } else if (index <=
                        filterByDate(transactions, now).length) {
                      return TransactionTile(
                          transaction:
                              filterByDate(transactions, now)[index - 1]);
                    } else if (index ==
                        filterByDate(transactions, now).length + 1) {
                      return _buildHeader('Yesterday');
                    } else if (index <=
                        filterByDate(transactions,
                                    now.subtract(Duration(days: 1)))
                                .length +
                            filterByDate(transactions, now).length +
                            1) {
                      return TransactionTile(
                          transaction: filterByDate(transactions,
                                  now.subtract(Duration(days: 1)))[
                              index -
                                  filterByDate(transactions, now).length -
                                  2]);
                    } else if (index ==
                        filterByDate(transactions, now).length +
                            2 +
                            filterByDate(transactions,
                                    now.subtract(Duration(days: 1)))
                                .length) {
                      return _buildHeader('All Time');
                    } else {
                      return TransactionTile(
                          transaction: groupTransactionsByDate()[index -
                              filterByDate(transactions, now).length -
                              filterByDate(transactions,
                                      now.subtract(Duration(days: 1)))
                                  .length -
                              3]);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildFilterText(String filter) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedFilter = filter;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: filter == selectedFilter
                ? Color(0xFF424A61)
                : Color(0xFFDEE6FB),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            filter,
            style: TextStyle(
              fontSize: 16,
              fontWeight: filter == selectedFilter
                  ? FontWeight.bold
                  : FontWeight.normal,
              color:
                  filter == selectedFilter ? Colors.white : Color(0xFF424A61),
            ),
          ),
        ),
      ),
    );
  }
}
