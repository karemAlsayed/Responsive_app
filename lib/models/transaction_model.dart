class TransactionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionModel(
      {required this.isWithdrawal,
      required this.title,
      required this.date,
      required this.amount});
}
