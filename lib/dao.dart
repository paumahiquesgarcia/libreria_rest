import 'package:libreria_rest/models/usuario.dart';
import 'package:libreria_rest/pojo.dart';
import 'database_provider.dart';

class DAO {
  final dbProvider = DatabaseProvider.dbProvider;

  Map<String, dynamic> columnas = {};

  Future<Usuario> add(POJO pojo) async {
    // Aquí podrías generar tu query manualmente
    String campos = columnas.keys.join(', ');
    String valores = columnas.values.map((value) => '?').join(', ');
    String tabla = pojo.runtimeType.toString();

    String query = 'INSERT INTO $tabla ($campos) VALUES ($valores)';

    // Luego puedes ejecutar la query con los valores
    await dbProvider.rawInsert(query, columnas.values.toList());

    var pojonuevo = pojo.fromJson(columnas);

    // Y finalmente devolver el usuario
    return pojonuevo;
  }

  Future<List> getList(POJO pojo) async {
    final db = await dbProvider.database;
    String tabla = pojo.runtimeType.toString();
    List<Map> resultados = await db.query(tabla);
    List usuarios = resultados.isNotEmpty
        ? resultados
            .map((item) => pojo.fromJson(Map<String, dynamic>.from(item)))
            .toList()
        : [];
    return usuarios;
  }

  Future<int> delete(POJO pojo) async {
    final db = await dbProvider.database;
    String tabla = pojo.runtimeType.toString();
    var resultado =
        await db.delete(tabla, where: 'id = ?', whereArgs: [pojo.id]);
    return resultado;
  }

  Future<int> update(POJO pojo) async {
    final db = await dbProvider.database;
    String tabla = pojo.runtimeType.toString();
    var resultado = await db
        .update(tabla, pojo.toJson(), where: 'id = ?', whereArgs: [pojo.id]);
    return resultado;
  }
}
