import 'package:libreria_rest/models/usuario.dart';
import 'package:libreria_rest/dao/usuariodao.dart';

class UsuarioBLL {
  final UsuarioDao usuarioDAO;

  UsuarioBLL(this.usuarioDAO);

  Future<void> add(Usuario usuario) async {
    // Aquí puedes agregar la lógica de validación antes de insertar el usuario
    // await usuarioDAO.add(usuarioDAO.columnas);
  }

  /*Future<List> getList() async {
     return await usuarioDAO.getList();
  }*/

  Future<void> update(Usuario usuario) async {
    // Aquí puedes agregar la lógica de validación antes de actualizar el usuario
    // await usuarioDAO.update(usuarioDAO.columnas);
  }

  Future<void> delete(int id) async {
    //await usuarioDAO.delete(id);
  }
}
