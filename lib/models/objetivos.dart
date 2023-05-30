import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Objetivos extends POJO {
  String nombre;
  String descripcion;

  String getDescripcion() => descripcion;

  void setDescripcion(String descripcion) => this.descripcion = descripcion;

  String getNombre() => nombre;

  void setNombre(nombre) => this.nombre = nombre;

  Objetivos({
    required this.nombre,
    required this.descripcion,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Objetivos.fromJson(Map<String, dynamic> json) => Objetivos(
        id: json['id'],
        nombre: json['nombre'],
        descripcion: json['descripcion'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'descripcion': descripcion,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
