import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Alergeno extends POJO {
  String nombre;

  String getNombre() => nombre;

  void setNombre(String nombre) => this.nombre = nombre;

  Alergeno({
    required super.id,
    required this.nombre,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Alergeno.fromJson(Map<String, dynamic> json) => Alergeno(
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
