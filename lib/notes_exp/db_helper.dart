import "dart:io";

import "package:path/path.dart";
import "package:path_provider/path_provider.dart";

import "package:sqflite/sqflite.dart";

class DbHelper {
  // singleton
  // private constructor
  DbHelper._();

  static DbHelper getInstance() => DbHelper._();

  Database? mDb;
  static const String dbName = "notesDB.db";
  static const String tableNote = "note";
  static const String columnNoteId = "note_id";
  static const String columnNoteTitle = "note_title";
  static const String columnNoteDesc = "note_desc";
  static const String columnNoteCreatedAt = "note_created_at";

  Future<Database> initDB() async {
    // if (mDb == null) {
    //   mDb = await openDb();
    // }

    // mDb = mDb ?? await openDb();
    mDb ??= await openDb();

    return mDb!;
  }

  Future<Database> openDb() async {
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, dbName);

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, _) {
        // tables
        db.execute(
          "create table $tableNote ( $columnNoteId integer primary key autoincrement, $columnNoteTitle text, $columnNoteDesc text, $columnNoteCreatedAt text)",
        );
      },
    );
  }

  // ----------------------- CRUD Operations --------------------
  // add note
  Future<bool> addNote({
    required String title,
    required String description,
  }) async {
    Database db = await initDB();
    int rowsEffected = await db.insert(tableNote, {
      columnNoteTitle: title,
      columnNoteDesc: description,
      columnNoteCreatedAt: DateTime.now().millisecondsSinceEpoch.toString(),
    });

    return rowsEffected > 0;
  }

  // fetch notes
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    Database db = await initDB();

    return await db.query(tableNote);
  }

  // Update Notes
  Future<bool> updateNote({
    required int id,
    required String updatedTitle,
    required String updatedDescription,
  }) async {
    Database db = await initDB();

    int rowsEffected = await db.update(
      tableNote,
      {columnNoteTitle: updatedTitle, columnNoteDesc: updatedDescription},
      where: "$columnNoteId = ?",
      whereArgs: [id],
    );

    return rowsEffected > 0;
  }

  // Delete notes
  Future<bool> deleteNote({required int id}) async {
    Database db = await initDB();

    int rowsEffected = await db.delete(
      tableNote,
      where: "$columnNoteId = ?",
      whereArgs: [id],
    );

    return rowsEffected > 0;
  }
}
