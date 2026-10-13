import 'dart:io';

void main(){
    //Questão 1
    int idade = 28;
    print(idade);
    
    //Questão 2
    double altura = 1.75;
    print(altura);
    
    //Questão 3
    print("Qual é o nome do seu animalzinho?");
    String? animal_estimacao = stdin.readLineSync();
    print("Meu animalzinho se chama $animal_estimacao");
    
    //Questão 4
    bool lampada = false;
    if (lampada == true){
        print("A lâmpada está ligada: $lampada");
    } else{
        print("A lâmpada está desligada: $lampada");
    };
        
    //Questão 5
    int a = 10;
    int b = 3;
    var soma = a + b;
    print("A soma de a + b é: $soma");
    
    //Questão 6
    var resto = a % b;
    print("O resto da divisão de a / b é: $resto");
    
    //Questão 7
    double preco = 19.99;
    double desconto = 0.10;

    double preco_desconto = preco * (1 - desconto);

    print('Preço do produto com desconto: ${preco_desconto.toStringAsFixed(2)}');

    //Questão 8
    String produto_nome = "bicicleta elétrica";
    double preco_bicicleta = 11000.0;
    print("Produto: $produto_nome - Preço: $preco_bicicleta");
    
    //Questão 9
    List cidades = ['João Pessoa', 'Natal', 'Fortaleza'];
    print(cidades[1]);
    
    //Questão 10
    Set num_1 = {1, 2};
    Set num_2 = {3, 2};
    
    var verificar = num_1.union(num_2);
    print(verificar);
    
    //Questão 11
    Map frutas = {'Maçã': 9.00, 'Banana': 8.00, 'Abacaixi': 8.00};
    print(frutas['Maçã']);
    
    //Questão 12
    var dinamica;
    dinamica = 10;
    print(dinamica);
    dinamica = "Dinâmica";
    print(dinamica);
    
    //Questão 13
    int idade = 23;
    if(idade >= 18){
        print("Maior de idade: $idade anos");
    }else{
        print("Menor de idade: $idade anos");
    };
   
   //Questão 14
   String? nome;
   
    var saudacao = nome ?? "Visistante";
    print(saudacao);

   //Questão 15
   double PI;
   PI = 3.14;
    
   PI = 4.0;
   print(PI);

//Questão 16
  print("Digite a sua idade:");
  
  String entrada = stdin.readLineSync() ?? '';
  int? idade = int.tryParse(entrada);

  if (idade == null || idade < 0) {
    print("Idade inválida");
  } 
  else if (idade >= 18) {
    print("Maior de idade");
  } 
  else {
    print("Menor de idade");
  }

//Questão 17
  double nota = 9.5;

  if (nota >= 7) {
    print("Aprovado");
  } 
  else if (nota >= 5 || nota < 7) {
    print("Recuperação");
  } 
  else {
    print("Reprovado");
  }

//Questão 18
  print("Digite um número:");
  
  String entrada = stdin.readLineSync() ?? '';
  int? num = int.tryParse(entrada);

  if (num == null) {
    print("Digite um número valido");
  } 
  else if (num % 2 == 0) {
    print("É Par: $num");
  } 
  else {
    print("É Ímpar $num");
  }

//Questão 19
  print("Digite um número de 1 a 7:");
  
  String entrada = stdin.readLineSync() ?? '';
  int? dia = int.tryParse(entrada);

  switch(dia){
    case 1:
      print("Domingo a noite :/");
      break;
    case 2:
      print("Odeio Segundas-Feira :(");
      break;
    case 3:
      print("Terça-Feira :|");
      break;
    case 4:
      print("Quarta-Feira :|");
      break;
    case 5:
      print("Quinta-Feira ;)");
      break;
    case 6:
      print("Graças a Deus hoje é Sexta-Feira");
      break;
    case 7:
      print(":D Hoje é Sábado!");
      break;
  }


//Questão 20
	int a = 1;
	int b = 5;
	int c = 10;

	if(a > b && c < a){
		print("A é o maior número: $a");
	}else if(b > c && a < b){
		print("B é o maior número: $b");
	}else if(c > a && b < c){
		print("C é o maior número: $c");
	}

//Questão 21
	for (int i = 10; i < 0; i--){
		print("Loop $i");
	}

//Questão 22
	for(int i = 0; i < 100; i++){
		if(i % 2 == 1) continue;
		print(i);
	}



//Questão 23
	int num = stdin.readLineSync();
	
	for(int i = 0; i < 11; i++){
		tabuada = num * i;
		print(tabuada);
	}
}import 'dart:io';

void main() {
  print("Digite um número para ver a tabuada:");

  String entrada = stdin.readLineSync() ?? '';
  int? num = int.tryParse(entrada);
  
  if (num == null) {
    return;
  }

  for (int i = 0; i < 11; i++) {
    int tabuada = num * i;
    print("$num x $i = $tabuada");
  }

//Questão 24
  var digitados = 0;

  while (true) {
    print("Digite um número:");

    var entrada = stdin.readLineSync() ?? '';

    var num_digitado = double.tryParse(entrada);

    if (num_digitado == null) {
      continue; 
    }
    
    // Agora o Dart sabe que num_digitado não é nulo e permite a comparação
    if (num_digitado < 0) {
      print("Número negativo");
      break;
    }
    
    digitados++;
  }
  
  print("Total de números digitados: $digitados");

//Questão 25
  List<String> nomes = ["Pedro", "João", "Ana", "Maria"];
  
  for (var nome in nomes) {
    print(nome.toUpperCase());
  }

//Questão 26
void calcularAreaRetangulo(double base, double altura){
	var area = base * altura;
	print(“Área do Retângulo: $area²”);
}
calcularAreaRetangulo(10.0, 5.0);

//Questão 27
void apresentarPessoa(String nome, {int? idade}){
	print(“nome: $nome, idade: ${idade ?? “?” } anos”);
}
apresentarPessoa(“João”);

//Questão 28
void enviarEmail(String destinatario, [String? assunto = “Sem assunto”, String? corpo =”Mensagem vazia”]){
	print(“Destinatário: $destinatario, Assunto: ${assunto ?? “?”}, Corpo ${corpo ?? “?”} ”);
}
enviarEmail(“João”, “Trabalho”);

//Questão 29
int somarLista(List<int> inteiros){
	int soma = 0;

	for(int numero in inteiros){
		soma += numeros;
}
return soma;
}
print(somarLista([2, 4, 6, 8]);

//Questão 30
void saudacao(String nome){
	print(“Olá, $nome!”);
}
saudacao(“João”);

//Questão 31
  List<int> numeros = [15, 22, 17, 30, 25, 12];
  print(numeros);
  numeros.add(40);
  print(numeros);
  print(numeros[2]);

//Questão 32
  List<String> frutas = ["maçã", "banana", "laranja", "banana"];

  print(frutas);

  frutas.removeWhere((fruta) => fruta == "banana");

  print(frutas);


//Questão 33


//Questão 34
  var letras = {"a", "b", "c"};

  letras.add("a");
  print("Conjunto: $letras");


//Questão 35
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {3, 4, 5};

  Set<int> uniao = set1.union(set2);
  Set<int> intersecao = set1.intersection(set2);

  print("União: $uniao");
  print("Interseção: $intersecao");

//Questão 36


//Questão 37
  Map pessoa = {"nome": "Ana", "idade": 25};
  
  pessoa["cidade"] = "São Paulo";
  print(pessoa);

//Questão 38
    Map produtos = {"celular": 1500, "notebook": 3000};
    print("Lista desatualizada: $produtos");
    
    if (!produtos.containsKey("tablet")) {
      produtos["tablet"] = 1000;
    }
    print("Lista Atualizada: $produtos");

//Questão 39
  Map<String, int> map1 = {"a": 1, "b": 2};
  Map<String, int> map2 = {"c": 3};

  Map<String, int> uniao = {...map1, ...map2};

  print(uniao);

//Questão 40
import 'dart:collection';
 
  Queue<String> fila = Queue();

  fila.add('primeiro');
  fila.add('segundo');
  fila.add('terceiro');

  fila.removeFirst();

  print(fila);


//Questão 41
  Queue<int> fila_num = Queue();

  fila_num.add(1);
  fila_num.add(2);
  fila_num.add(3);

  fila_num.addFirst(0);
  print(fila_num);

  fila_num.removeLast();
  print(fila_num);

//Questão 42
  Queue<int> fila_num = Queue.from([10, 20, 30]);

  List<int> lista = fila_num.toList();

  print(lista[1]);


//Questão 43
import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
  int valor;

  Node(this.valor);
}

void main() {
  LinkedList<Node> lista = LinkedList<Node>();

  lista.add(Node(10));
  lista.add(Node(20));
  lista.add(Node(30));

  for (Node node in lista) {
    print(node.valor);
  }
}


//Questão 44
import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
  int valor;

  Node(this.valor);
}

void main() {
  LinkedList<Node> lista = LinkedList<Node>();

  lista.add(Node(10));
  lista.add(Node(20));
  lista.add(Node(30));

  for (Node node in lista) {
    if (node.valor == 20) {
      node.unlink();
      break;
    }
  }

  for (Node node in lista) {
    print(node.valor);
  }
}


//Questão 45
import 'dart:collection';

base class Node extends LinkedListEntry<Node> {
  int valor;

  Node(this.valor);
}

void main() {
  LinkedList<Node> lista = LinkedList<Node>();

  lista.add(Node(10));
  lista.add(Node(20));
  lista.add(Node(30));

  for (Node node in lista) {
    print(node.valor * 2);
  }
}


//Questão 46
class Livro {
  String titulo;
  String autor;
  int anoPublicacao;

  Livro(this.titulo, this.autor, this.anoPublicacao);

  String exibirDetalhes() {
    return 'Título: $titulo, Autor: $autor, Ano: $anoPublicacao';
  }
}

void main() {
  var livro = Livro('Dom Casmurro', 'Machado de Assis', 1899);

  print(livro.exibirDetalhes());
}


//Questão 47
class Contador {
  int _valor = 0;

  void incrementar() {
    _valor++;
  }

  void resetar() {
    _valor = 0;
  }
}

void main() {
  var contador = Contador();

  contador.incrementar();
  contador.incrementar();

  contador.resetar();
}


//Questão 48
class Aluno {
  String nome;
  String matricula;

  Aluno(this.nome, this.matricula);

  Aluno.semMatricula(this.nome) : matricula = 'Não informada';
}

void main() {
  var aluno1 = Aluno('Ana', '20240001');
  var aluno2 = Aluno.semMatricula('Bruno');

  print(aluno1.nome);
  print(aluno1.matricula);

  print(aluno2.nome);
  print(aluno2.matricula);
}


//Questão 49
class Produto {
  String nome;
  double preco;

  Produto(this.nome, [this.preco = 0.0]);
}

void main() {
  var produto1 = Produto('Celular', 1500.0);
  var produto2 = Produto('Mouse');

  print(produto1.nome);
  print(produto1.preco);

  print(produto2.nome);
  print(produto2.preco);
}


//Questão 50
class Veiculo {
  String marca;
  int velocidadeMaxima;

  Veiculo(this.marca, this.velocidadeMaxima);
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro(String marca, int velocidadeMaxima, this.quantidadePortas)
      : super(marca, velocidadeMaxima);
}

void main() {
  var carro = Carro('Toyota', 200, 4);

  print(carro.marca);
  print(carro.velocidadeMaxima);
  print(carro.quantidadePortas);
}


//Questão 51
class Animal {
  String emitirSom() {
    return 'Som de animal';
  }
}

class Gato extends Animal {
  @override
  String emitirSom() {
    return 'Miau!';
  }
}

void main() {
  var gato = Gato();

  print(gato.emitirSom());
}


//Questão 52
class Forma {
  double calcularArea() {
    return 0;
  }
}

class Quadrado extends Forma {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Circulo extends Forma {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

void main() {
  Forma forma1 = Quadrado(5);
  Forma forma2 = Circulo(3);

  print(forma1.calcularArea());
  print(forma2.calcularArea());
}


//Questão 53
class Notificacao {
  void enviar() {
    print('Notificação enviada!');
  }
}

class Email extends Notificacao {
  @override
  void enviar() {
    print('Email enviado!');
  }
}

class SMS extends Notificacao {
  @override
  void enviar() {
    print('SMS enviado!');
  }
}

void main() {
  Notificacao notificacao1 = Email();
  Notificacao notificacao2 = SMS();

  notificacao1.enviar();
  notificacao2.enviar();
}


//Questão 54
class ContaBancaria {
  double _saldo = 0.0;

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      print('Saque realizado!');
    } else {
      print('Erro: Saldo insuficiente');
    }
  }
}

void main() {
  var conta = ContaBancaria();

  conta.depositar(1000);
  conta.sacar(500);
  conta.sacar(600);
}


//Questão 55
class Termometro {
  double _temperaturaC = 0.0;

  void ajustarTemperatura(double novaTemp) {
    if (novaTemp >= -50 && novaTemp <= 100) {
      _temperaturaC = novaTemp;
      print('Temperatura ajustada!');
    } else {
      print('Erro: Temperatura inválida!');
    }
  }
}

void main() {
  var termometro = Termometro();

  termometro.ajustarTemperatura(25);
  termometro.ajustarTemperatura(120);
}


//Questão 56
class Retangulo {
  double _largura = 0;
  double _altura = 0;


  double get largura {
    return _largura;
  }


  set largura(double valor) {
    if (valor > 0) {
      _largura = valor;
    } else {
      print('Erro: Valor inválido');
    }
  }

  
  double get altura {
    return _altura;
  }

  set altura(double valor) {
    if (valor > 0) {
      _altura = valor;
    } else {
      print('Erro: Valor inválido');
    }
  }
}

void main() {
  var ret = Retangulo();

  ret.largura = 10;
  ret.altura = -5;

  print(ret.largura);
  print(ret.altura);
}


//Questão 57
class Usuario {
  String _email = '';

  set email(String valor) {
    if (valor.contains('@')) {
      _email = valor;
    } else {
      print('Erro: Email inválido');
    }
  }
}

void main() {
  var usuario = Usuario();

  usuario.email = 'usuario@email.com';
  usuario.email = 'usuarioemail.com';
}


//Questão 58
abstract class Autenticavel {
  bool autenticar(String senha);
}

class Usuario implements Autenticavel {
  @override
  bool autenticar(String senha) {
    return senha == '1234';
  }
}

void main() {
  var user = Usuario();

  print(user.autenticar('1234'));
  print(user.autenticar('5678'));
}


//Questão 59
abstract class Calculavel {
  double calcular(double a, double b);
}

class Soma implements Calculavel {
  @override
  double calcular(double a, double b) {
    return a + b;
  }
}

class Subtracao implements Calculavel {
  @override
  double calcular(double a, double b) {
    return a - b;
  }
}

void main() {
  var soma = Soma();
  var subtracao = Subtracao();

  print(soma.calcular(10, 5));
  print(subtracao.calcular(10, 5));
}


//Questão 60
abstract class Dispositivo {
  void ligar();
}

class Celular extends Dispositivo {
  @override
  void ligar() {
    print('Celular ligado!');
  }
}

void main() {
  Dispositivo dispositivo = Celular();

  dispositivo.ligar();
}


//Questão 61
abstract class FormaGeometrica {
  double calcularArea();
}

class Triangulo extends FormaGeometrica {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return (base * altura) / 2;
  }
}

class Retangulo extends FormaGeometrica {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    return largura * altura;
  }
}

void main() {
  FormaGeometrica triangulo = Triangulo(10, 5);
  FormaGeometrica retangulo = Retangulo(10, 5);

  print(triangulo.calcularArea());
  print(retangulo.calcularArea());
}


//Questão 62
void main() {
  int a = 10;
  int b = 0;

  if (b != 0) {
    print(a ~/ b);
  } else {
    print('Erro: não é possível dividir por zero.');
  }
}


//Questão 63
void main() {
  String texto = "abc";

  int? numero = int.tryParse(texto);

  if (numero != null) {
    print('Número convertido: $numero');
  } else {
    print('Erro: o texto não é um número válido.');
  }
}


//Questão 64
void main() {
  List lista = [1, 2, 3];

  try {
    print(lista[5]);
  } catch (e) {
    print('Erro: índice inválido.');
  }
}


//Questão 65
class EmailInvalidoException implements Exception {
  String mensagem;

  EmailInvalidoException(this.mensagem);
}

void main() {
  String email = "usuario.example.com";

  try {
    if (!email.contains('@')) {
      throw EmailInvalidoException('E-mail inválido!');
    }

    print('E-mail válido!');
  } catch (e) {
    print(e);
  }
}


//Questão 66
void processarEntrada(String entrada) {
  try {
    int numero = int.parse(entrada);

    List lista = [10, 20, 30];

    print(lista[numero]);
  } catch (e) {
    print('Erro: entrada inválida ou índice fora do intervalo.');
  }
}

void main() {
  processarEntrada('1');
  processarEntrada('abc');
  processarEntrada('5');
}
}


