void main() {
	// Llamada a un metodo
	print(sumarNumeros(5, 8));
	// Pasar la referencia a una funcion
	print(sumarNumeros);
	List<int> listaNumeros = [
	1,2,3,4,5,6,7,8,9
	];
	print(listaNumeros);
	/*for (int i = 0; i < listaNumeros.length; i++){
		print(listaNumeros[i] + 5);
	}*/
	// Analogia de usar un ciclo for a traves de un metodo
	listaNumeros.forEach(procesarNumero);
	// Analogia de un ciclo for pero guardando las operaciones sobre cada dato
	print(listaNumeros.map((int n) => n * n).toList());
	// El metodo reduce "combina" todos los elementos para obtener un resultado
	// En este caso es la suma de todos elementos de la lista
	int resultado = listaNumeros
	.reduce((int valorAcumulado, valorActual) => valorAcumulado + valorActual);
	print(resultado);
	// El metodo where filtra los datos por medio de una condicion
	List<int> listaPares = listaNumeros.where((int n) {
		//return n % 2 == 0;
		return n.isEven;
		}).toList();
	// Se pueden encadenar funciones a traves del paradigma funcional de forma
	// que los datos pueden pasar por varios precesamientos en una sola linea
	resultado = listaNumeros.where((int n) => n.isEven)
	.reduce((int a, int b) => a + b);
	// Esta caracteristica de Dart fue introducida recientemente en mayo
	// la cual permite combinar varias listas en una sola
	List combinaciones = [
	1,2,3, ...listaPares, 6, 7, 8
	];
	print(listaPares);
	print(resultado);
}

//procesarNumero(int n) => print(n + 5);

int procesarNumero(int n) {
	n+= 5;
	return n;
}


int sumarNumeros(int a, int b) {
	return a + b;
}

