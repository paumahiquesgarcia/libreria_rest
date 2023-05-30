import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Ejercicio extends POJO {
  String nombre;
  bool terminado;
  double caloriasQuemadas;
  double tiempo;
  int imagen;

  String getNombre() => nombre;

  set setNombre(nombre) => this.nombre = nombre;

  bool getTerminado() => terminado;

  set setTerminado(terminado) => this.terminado = terminado;

  double getCaloriasQuemadas() => caloriasQuemadas;

  set setCaloriasQuemadas(caloriasQuemadas) =>
      this.caloriasQuemadas = caloriasQuemadas;

  double getTiempo() => tiempo;

  set setTiempo(tiempo) => this.tiempo = tiempo;

  int getImagen() => imagen;

  set setImagen(imagen) => this.imagen = imagen;

  Ejercicio({
    required this.nombre,
    required this.terminado,
    required this.caloriasQuemadas,
    required this.tiempo,
    required this.imagen,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Ejercicio.fromJson(Map<String, dynamic> json) => Ejercicio(
        id: json['id'],
        nombre: json['nombre'],
        terminado: json['terminado'],
        caloriasQuemadas: json['caloriasQuemadas'].toDouble(),
        tiempo: json['tiempo'].toDouble(),
        imagen: json['imagen'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'terminado': terminado,
        'caloriasQuemadas': caloriasQuemadas,
        'tiempo': tiempo,
        'imagen': imagen,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
