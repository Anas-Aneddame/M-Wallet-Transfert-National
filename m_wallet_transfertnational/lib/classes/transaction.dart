class Transaction {
  final String senderName;
  final String receiverName;
  final DateTime date;
  final String status;
  final double amount;

  Transaction({
    required this.senderName,
    required this.receiverName,
    required this.date,
    required this.status,
    required this.amount,
  });
}
