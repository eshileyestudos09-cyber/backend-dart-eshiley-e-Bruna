import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  final handler = (Request request) {
    return Response.ok('Olá, Rafael. O melhor professor de desivolvimento web!');
  };

  final server = await shelf_io.serve(handler, 'localhost', 8080);

  print('Servidor rodando em http://localhost:${server.port}');
}
