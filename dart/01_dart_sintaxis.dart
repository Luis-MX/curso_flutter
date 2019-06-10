
// Forma abreviada de creacion de funciones
// main() => print("Hola mundo");

void main(List<String> argumentos) {
	// Interpreta el tipo en tiempo de compilacion
	var str = "Algo";
	var numero = 78;
	String cadena = "Luis";
	cadena = 'Enrique';
	int n = 5;
	double decimal = 3.1416;
	bool valorDeVerdadero = true | false;
	List<String> lista = ["Apple", "Potato"];
	// dynamic sirve como tipo generico para datos variablea
	Map<String, dynamic> mapa = {
		"edad": 7,
		"nombre": "Luis"
	};
	// Interpolacion de cadenas
	print("Hola mundo: ${5 + 9}");
	print('''
		Tipos de datos:
		int: $n
		decimal: $decimal
		bool: $valorDeVerdadero''');
	print(lista);
	print(mapa);
}











//main() => print("Curso flutter");