import 'package:libreria_rest/DAO.dart';
import '../models/usuario.dart';

class UsuarioDao extends DAO {
  @override
  late Map<String, dynamic> columnas;

  UsuarioDao(Usuario usuario) {
    columnas = usuario.toJson();
  }
}
