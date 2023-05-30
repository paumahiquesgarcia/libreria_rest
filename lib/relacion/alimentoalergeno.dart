import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class AlimentoAlergeno extends POJO {
  int idAlimento;
  int idAlergeno;

  int getIdAlimento() => idAlimento;

  void setIdAlimento(idAlimento) => this.idAlimento = idAlimento;

  int getIdAlergeno() => idAlergeno;

  void setIdAlergeno(idAlergeno) => this.idAlergeno = idAlergeno;

  AlimentoAlergeno({
    required this.idAlimento,
    required this.idAlergeno,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory AlimentoAlergeno.fromJson(Map<String, dynamic> json) =>
      AlimentoAlergeno(
        id: json['id'],
        idAlimento: json['idAlimento'],
        idAlergeno: json['idAlergeno'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'idAlimento': idAlimento,
        'idAlergeno': idAlergeno,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
