class TestResult {
  String testName, time, date, details;
  String? result, notes, pdfFilePath;

  TestResult({
    required this.testName,
    required this.time,
    required this.date,
    required this.details,
    this.result,
    this.notes,
    this.pdfFilePath,
  });
}
