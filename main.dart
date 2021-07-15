class Main {
  
}

void printarValores(var valor) {
  if (valor is String) {
    print("O valor $valor é uma String");
  }
  if (valor is int) {
    print("O valor $valor é um Inteiro");
  }
  if (valor is double) {
    print("O valor $valor é um Double");
  }
  if (valor is bool) {
    print("O valor $valor é um Boolean");
  }
}
