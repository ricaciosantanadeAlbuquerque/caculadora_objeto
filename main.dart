import 'dart:io';

import 'calculadora.dart';
void main(List<String> args){
 var calculadora = menu();
 print((calculadora.somaValor  != null) ? calculadora.somaValor : '--------');
 print((calculadora.subtracaoValor != null) ? calculadora.subtracaoValor : '--------' );
 print((calculadora.multiplicacaoValor != null) ? calculadora.multiplicacaoValor : '------');
 print((calculadora.divisaoValor != null) ? calculadora.divisaoValor : '--------');
 
}

Calculadora menu(){
  print('Digite [1] para somar');
  print('Digite [2] para subtrair');
  print('Digite [3] para multiplicar');
  print('Digite [4] para dividir');
  print('Digite [5] para sair !!');
  String? opEntrada = stdin.readLineSync();
  
    if (double.parse(opEntrada!) == 5) exit(0);

  print('Digite o primeiro valor');
  String? entradaValor1 = stdin.readLineSync();
  print('Digite o segundo valor');
  String? entradaValor2 = stdin.readLineSync();
    
  if(opEntrada != null && entradaValor1 != null && entradaValor2 != null){
    if(opEntrada.isNotEmpty && entradaValor1.isNotEmpty && entradaValor2.isNotEmpty){

      try{
       int op = int.parse(opEntrada);
       double valor1 = double.tryParse(entradaValor1) ?? 0.0;
       double valor2 =  double.tryParse(entradaValor2) ?? 0.0;

      var calculadora =  Calculadora(op: op, valor1: valor1, valor2: valor2); // linha de instanciamento
      return calculadora;

      }catch(e){
        throw Exception('ERRO! $opEntrada e $entradaValor1 e $entradaValor2 não são valores numéricos');
        }
       
    }else{
      print('ERRO! valores vazios');
      exit(0);
    }
  }else{
    print('ERRO!!! valores nulos');
    exit(0);
  }
}