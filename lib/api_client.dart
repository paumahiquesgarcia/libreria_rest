import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = 'https://admin.neverlate.es';

  // Función para realizar una solicitud GET
  Future<dynamic> getRequest(String endpoint) async {
    try {
      final response = await http.get(Uri.parse(baseUrl + endpoint));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to perform GET request: $e');
    }
  }

  // Función para realizar una solicitud POST
  Future<dynamic> postRequest(
      String endpoint, Map<String, dynamic> data) async {
    try {
      // Definir encabezados personalizados
      Map<String, String> headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
      };

      // Codificar los datos en formato x-www-form-urlencoded
      String encodedData = data.entries
          .map((e) =>
              '${Uri.encodeQueryComponent(e.key)}=${Uri.encodeQueryComponent(e.value.toString())}')
          .join('&');

      final response = await http.post(
        Uri.parse(baseUrl + endpoint),
        headers: headers, // Agregar los encabezados personalizados aquí
        body: encodedData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to post data');
      }
    } catch (e) {
      throw Exception('Failed to perform POST request: $e');
    }
  }

  Future<dynamic> getResponseData(url, data) async {
    return await postRequest(url, data);
  }
}
