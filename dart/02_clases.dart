

main() {
	// Imprimiendo el valor devuelto por el metodo toString
	print(Persona("Luis", edad: 21));
	// Forma tradicional de crear un objeto o instancia
	Persona otraPersona = new Persona("Enrique", edad: 20);
	// Creacion de una instancia sin el new a partir de Dart 2
	Persona otra = Persona("Ortiz", edad: 20);
	// Formade llamar un setter
	otraPersona.setNombre = "Santana";
	// Formade llamar un getter
	print(otraPersona.getNombre);
	print(otra.hacerAlgo());
	Persona persona = new Persona.toJson({});
}


class Persona {
	String nombre;
	int edad;
	// El guion bajo encapsula la variable
	String _privada;

	// Contructor de incializacion en una sola linea
	//Persona(this.nombre, this.edad);

	// Constructor nombrado
	Persona.toJson(Map<String, dynamic> json) {
	}

	// Constructor tradicional
	Persona(String nombre, {this.edad}) {
		this.nombre = nombre;
		this.edad = edad;
		// El parametro edad es opcional
		Persona p = Persona("Luis");
		// Llamada de un paramtro nombrado
		Persona p1 = Persona("Luis", edad: 20);
	}

	// Sobre escritura del metodo de la clase Object
	String toString() {
		return 'Nombre: ${this.nombre}, edad: ${this.edad}';
	}

	// Declarar un getter
	String get getNombre => nombre;

	// Declarar un setter
	set setNombre(String nombre) => this.nombre = nombre;

	// Definicion de un metodo tradicional
	void hacerAlgo(String parametros) {
		return 1;
	}

	// Definicion de un metodo de una sola linea
	int hacerAlgo(String parametros) => 1;
}


// Uso de la herencia
class ClaseHija extends Persona {
	DateTime _fechaNacimiento;
}