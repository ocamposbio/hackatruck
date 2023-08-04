/**

Conceitos:
Autenticaçao
JSON
Endpoint
Objetos


Endpoint: URL que entrega um json
  decode e encode dos dados.

Conceitos:

Codable
Optional
Objetos
Observable Object
Published --> Array pode ser consumido fora da classe
State Object -> State em objeto, quando um obj for modificado, eu recebo um alerta

.onAppear(){
  viewModel.fetch()
}

**/

//Published example:
class ViewModel : ObservableObject {
@Published var personas : [Pessoas] = []

}

import foundation

//Todos os nomes devem estar no json

"Wand.core!" //--> Desempacotar o opcional

struct Wand : Codable {
  let wood : String? //campos opcionais: posso ou não receber um valor
  let core : String?
  let length : Double?
}


struct dados {
  var nome: String
  var idade: String
}

// Na conversão para JSON, ficaria assim:

"dado": {
  "nome": ""
  "idade": ""
}
