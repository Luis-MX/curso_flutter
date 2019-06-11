
// Forma abreviada de creacion de funciones
// main() => print("Hola mundo");

/**
 * Tipos de comentarios: /* comentario */
 /*Este es un comentario mulltilinea
 */

// Este comentario es de una sola linea

/// Los comentarios de triple diagonal
/// sirven para documentar funciones, clases o variables
/// y pueden ser procesados por el programa dartdoc
/// para generar documentacion.
/// Ademas estos permiten incluir sintaxis de Markdown, por ejemplo:
/// # Un titulo
/// 
/// ## Subtitulo
/// 
/// Una lista de elementos:
/// - Elemento 1
/// - Elemento 2
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