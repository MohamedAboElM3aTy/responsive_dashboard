class ExpensesHeaderContainerModel {
  final String imageName;
  final String accountType;
  final String? moneyAmount;
  final String? date;

  const ExpensesHeaderContainerModel({
    required this.imageName,
    required this.accountType,
    this.moneyAmount = '20,129',
    this.date = 'April 2022',
  });
}
