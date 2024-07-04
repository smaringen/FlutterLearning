void main() {
  print('Inicio del programa');

  httpGet('www.google.es').then((value) {
    print(value);
  }).catchError((e) {
    print('Error: $e');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(
      const Duration(
        seconds: 1,
      ), () {
    throw 'Error en la petición http';
//    return 'Respuesta de la petición http';
  });
}
