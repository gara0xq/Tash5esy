class DocumentModel {
  String documentName, description, pdfFilePath;
  DateTime? dateTime = DateTime.now();
  List<String>? notes;
  DocumentType type;

  DocumentModel({
    required this.documentName,
    required this.description,
    required this.type,
    this.pdfFilePath = "",
    this.notes,
    this.dateTime,
  });
}

enum DocumentType {
  Lab,
  XRay,
}
