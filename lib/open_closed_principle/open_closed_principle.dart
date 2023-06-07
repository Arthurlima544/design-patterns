import 'package:design_patterns/logger.dart';

class Project {
  final List<Document> _documents;
  final List<WritableDocument> _writableDocs;

  Project(this._documents, this._writableDocs);

  void openAllDocuments() {
    for (Document doc in _documents) {
      doc.open();
    }
  }

  void saveAllDocuments() {
    for (WritableDocument doc in _writableDocs) {
      doc.save();
    }
  }
}

class Document {
  final String data;
  final String filename;

  Document(this.data, this.filename);

  void open() {
    logger.i("file openned");
  }
}

class WritableDocument extends Document {
  WritableDocument(super.data, super.filename);

  void save() {
    logger.i("file saved");
  }
}
