import 'dart:io';

extension FileExtension on File {
  Future<File> write(
    List<int> bytes,
  ) async {
    final file = File(path);

    if (await file.exists()) {
      await file.delete();
    }

    await file.create(recursive: true);
    await file.writeAsBytes(bytes);

    return file;
  }
}
