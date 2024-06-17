import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class NetworkHelper{
    static Future getData(Uri uri) async {
        Response response = await http.get(uri);
        if (response.statusCode == 200){
            var dd = jsonDecode(response.body);
            return dd;
        }
        else{
            print(response.statusCode);
        }
    }
}