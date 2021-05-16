import 'package:marvel_heroes_flutter/app/shared/http/http_provider_interface.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

class HttpProvider implements IHttpProvider {
  // TODO: deixar em um arquivo não commitável.
  final String baseUrl = 'gateway.marvel.com';
  final String apikeyPrivate = '280169076119b66069ef95e62f92711c3e2af12f';
  final String apiKeyPublic = '46c3d81c7a957f4469928224ae01ef80';

  @override
  Future get(String url, Map<String, dynamic>? params) async {
    final paramsAuth = _generateEspecialParams();
    // TODO: pensar em algo mais clean
    if (params != null) {
      params.addAll(paramsAuth);
    } else {
      params = paramsAuth;
    }
    final urlComplete = Uri.https(baseUrl, url, params);
    print(urlComplete);
    final response = await http.get(urlComplete);
    return json.decode(response.body);
  }

  String _generateMd5Hash(String data) {
    return hex.encode(crypto.md5.convert(Utf8Encoder().convert(data)).bytes);
  }

  Map<String, String> _generateEspecialParams() {
    final dateInMilliNow =
    DateTime.now().microsecondsSinceEpoch.toString();
    return {
      'apikey': apiKeyPublic,
      'ts': dateInMilliNow,
      'hash': _generateMd5Hash('$dateInMilliNow$apikeyPrivate$apiKeyPublic')
    };
  }

}
