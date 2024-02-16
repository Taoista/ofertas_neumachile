import 'package:flutter_dotenv/flutter_dotenv.dart';

String urlApi() {
    return dotenv.env['BASE_URL']!;
}