import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class TipoRutina extends POJO {
  String nombre;

  String getNombre() => nombre;

  void setNombre(nombre) => this.nombre = nombre;

  TipoRutina({
    required this.nombre,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory TipoRutina.fromJson(Map<String, dynamic> json) => TipoRutina(
        id: json['id'],
        nombre: json['nombre'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
