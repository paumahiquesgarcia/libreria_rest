import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class ComidasAlimento extends POJO {
  int idComida;
  int idAlimento;
  double cantidad;

  int getIdComida() => idComida;

  void setIdComida(idComida) => this.idComida = idComida;

  int getIdAlimento() => idAlimento;

  void setIdAlimento(idAlimento) => this.idAlimento = idAlimento;

  double getCantidad() => cantidad;

  void setCantidad(cantidad) => this.cantidad = cantidad;

  ComidasAlimento({
    required this.idComida,
    required this.idAlimento,
    required this.cantidad,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory ComidasAlimento.fromJson(Map<String, dynamic> json) =>
      ComidasAlimento(
        id: json['id'],
        idComida: json['idComida'],
        idAlimento: json['idAlimento'],
        cantidad: json['cantidad'].toDouble(),
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'idComida': idComida,
        'idAlimento': idAlimento,
        'cantidad': cantidad,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
