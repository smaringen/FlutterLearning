void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('www.google.es');
    print('Éxito: $value');
  } on Exception catch (e) {
    print('Tenemos una exception: $e');
  } catch (e) {
    print('OOOPS!! Algo terrible pasó: $e');
  } finally {
    print('Fin del try-catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay paramétros en el URL');

//  return 'Tenemos un valor de la petición';
}
