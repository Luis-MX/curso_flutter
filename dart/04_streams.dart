main() {
	Future future; // Una sola tarea asincrona
	Stream stream; // Una secuencia de tareas asincronas
	Future.delayed(Duration(seconds: 3), () async {
		/// Caso de uso:
		/// Nos conectamos a internet
		/// Descargamos el json
		/// Lo parseamos
		/// Lista de usuarios
		/// si hay un  error podemos lanzar una excepcion
		print("Haciendo la tarea");
		return "Resultado";
	}).then((String res) => print(res), onError: print); // Mostrar los datos en pantalla
	print("Final del main");
	// En un stream podemos ejecutar multiples tareas de forma asincrona
	// de forma finita o infinita
	Stream.periodic(Duration(seconds: 1), (int contador) {
		print(contador + 1);
		return null;
		}).take(13).listen(null);
}
