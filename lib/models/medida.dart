import 'package:libreria_rest/pojo.dart';
import 'package:libreria_rest/reflectable/reflector.dart';

const reflector = Reflector();

@reflector
class Medida extends POJO {
  bool esLiquido;
  bool esSolido;
  int kcalPorLoKg;

  bool getEsLiquido() => esLiquido;

  void setEsLiquido(esLiquido) => this.esLiquido = esLiquido;

  bool getEsSolido() => esSolido;

  void setEsSolido(esSolido) => this.esSolido = esSolido;

  int getKcalPorLoKg() => kcalPorLoKg;

  void setKcalPorLoKg(kcalPorLoKg) => this.kcalPorLoKg = kcalPorLoKg;

  Medida({
    required this.esLiquido,
    required this.esSolido,
    required this.kcalPorLoKg,
    required super.id,
    required super.dateCreated,
    required super.dateModified,
  });

  factory Medida.fromJson(Map<String, dynamic> json) => Medida(
        id: json['id'],
        esLiquido: json['esLiquido'],
        esSolido: json['esSolido'],
        kcalPorLoKg: json['kcalPorLoKg'],
        dateCreated: DateTime.parse(json['dateCreated']),
        dateModified: DateTime.parse(json['dateModified']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'esLiquido': esLiquido,
        'esSolido': esSolido,
        'kcalPorLoKg': kcalPorLoKg,
        'dateCreated': dateCreated.toIso8601String(),
        'dateModified': dateModified.toIso8601String(),
      };
}
