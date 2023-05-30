import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class DiarioRutina extends POJO {
  String usuario;
  int tipo;
  DateTime fecha;

  String getUsuario() => usuario;

  void setUsuario(usuario) => this.usuario = usuario;

  int getTipo() => tipo;

  void setTipo(tipo) => this.tipo = tipo;

  DateTime getFecha() => fecha;

  void setFecha(fecha) => this.fecha = fecha;

  DiarioRutina({
    required this.usuario,
    required this.tipo,
    required this.fecha,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory DiarioRutina.fromJson(Map<String, dynamic> json) => DiarioRutina(
        id: json['id'],
        usuario: json['usuario'],
        tipo: json['tipo'],
        fecha: DateTime.parse(json['fecha']),
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'usuario': usuario,
        'tipo': tipo,
        'fecha': fecha.toIso8601String(),
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
