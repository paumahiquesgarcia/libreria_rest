import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Alimento extends POJO {
  String nombre;
  bool esVegano;
  bool esVegetariano;
  bool esPescetariano;
  int medida;

  String getNombre() => nombre;

  void setNombre(nombre) => this.nombre = nombre;

  bool getEsVegano() => esVegano;

  void setEsVegano(esVegano) => this.esVegano = esVegano;

  bool getEsVegetariano() => esVegetariano;

  void setEsVegetariano(esVegetariano) => this.esVegetariano = esVegetariano;

  bool getEsPescetariano() => esPescetariano;

  void setEsPescetariano(esPescetariano) =>
      this.esPescetariano = esPescetariano;

  int getMedida() => medida;

  void setMedida(medida) => this.medida = medida;

  Alimento({
    required this.nombre,
    required this.esVegano,
    required this.esVegetariano,
    required this.esPescetariano,
    required this.medida,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Alimento.fromJson(Map<String, dynamic> json) => Alimento(
        id: json['id'],
        nombre: json['nombre'],
        esVegano: json['esVegano'],
        esVegetariano: json['esVegetariano'],
        esPescetariano: json['esPescetariano'],
        medida: json['medida'].toDouble(),
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'esVegano': esVegano,
        'esVegetariano': esVegetariano,
        'esPescetariano': esPescetariano,
        'medida': medida,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
