import 'package:a2v1/weather/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// https://api.openweathermap.org/data/2.5/weather?lat=31.573152&lon=74.3078585&appid=b2ffdc51f9cf000f1d73c1d3d33ccfd9
class HTTPHelper {
  final String domainName = "api.openweathermap.org";
  final String path = "data/2.5/weather";
  final apiKey = "b2ffdc51f9cf000f1d73c1d3d33ccfd9";
  Future<Weather> GetWeather(String lat, String lon) async {
    Map<String, dynamic> parameters = {"lat": lat, "lon": lon, "appid": apiKey};
    Uri url = Uri.https(domainName, path, parameters);
    http.Response response = await http.get(url);
    var data = json.decode(response.body);

    Weather obj = Weather.fromJson(data);

    return obj;
  }
}
