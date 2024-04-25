class TransactionHistoryModel {
  final String title, date, amount;
  final bool isNotPaid;

  const TransactionHistoryModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.isNotPaid,
  });
}
