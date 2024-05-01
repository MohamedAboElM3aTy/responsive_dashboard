class TransactionHistoryModel {
  final String title, date, amount;
  final bool isPaid;

  const TransactionHistoryModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.isPaid,
  });
}
