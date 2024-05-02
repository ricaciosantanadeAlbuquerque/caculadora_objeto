import 'interface_calculadora.dart';

class Calculadora implements InterfaceCalculadora{
  int? _op;
  double? _valor1;
  double? _valor2;

    Calculadora({required int? op,required double? valor1, required double? valor2}){
      this.op = (op != null) ? op : 0;
      this.valor1 = (valor1 != null) ?  valor1 : 0.0;
      this.valor2 = (valor2 != null) ? valor2 : 0.0;
      escolha(op: this.op!, valor1: this.valor1!, valor2: this.valor2!);
    }

  int? get op => this._op;

  void set op(int? op) => this._op = op;

  double? get valor1 => this._valor1;

  void set valor1(double? valor1) => this._valor1 = valor1;

  double? get valor2 => this._valor2;

  void set valor2(double? valor2) => this._valor2 = valor2;

  void escolha({required int op,required double valor1,required double valor2}){
      
      switch(op){
        case 1:
    somaValor = soma(valor1: valor1, valor2: valor2);
         break; 
         case 2: 
         break; 
         case 3: 
         break; 
         case 4: 
         break; 
         case 5: 
         break; 
         default:
      }
  }
  // ================== Interfaces

  @override
  double? somaValor;

  @override
  double soma({required double valor1,required double valor2}){
       return valor1 + valor2;
  }

  @override 
  String toString() => 'Opção $op, valor 1:$valor1, valor 2: $valor2';
}