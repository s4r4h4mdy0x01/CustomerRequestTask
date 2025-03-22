class BorrowRequestsRequestBody {
  final String? borrowRequestDate;
  final double borrowValue;
  final String? reason;

 BorrowRequestsRequestBody({
    required this.borrowRequestDate,
    required this.borrowValue,
    required this.reason,
  });
}
