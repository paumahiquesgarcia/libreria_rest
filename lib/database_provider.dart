import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  static final DatabaseProvider dbProvider = DatabaseProvider();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await createDatabase();
    return _database!;
  }

  createDatabase() async {
    String databasesPath = await getDatabasesPath();
    String dbPath = join(databasesPath, 'miBaseDatos.db');

    var database = await openDatabase(dbPath, version: 1, onCreate: initDB);
    return database;
  }

  void initDB(Database db, int version) async {
    // Aquí iría la lógica para crear las tablas en la base de datos.
  }

  Future<int> rawInsert(String sql, List<dynamic> arguments) async {
    final db = await database;
    return await db.rawInsert(sql, arguments);
  }
}
