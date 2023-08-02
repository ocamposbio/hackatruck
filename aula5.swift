/*

mvvm architecture

Listas

Criaçao do layout do spotify

Struct é um tipo de valor que encapsula os dados relacionados juntos, facilitando o gerenciamento e manipulaçao


ForEach --> estrutura que permite iterar sobre uma coleçao, como array, e criar visualizaçao sobre os itens

  A sintaxe "id: \.self" é usada para burlar a identificaçao única de cada elemento na lista. Isso funciona desde que nao usemos para acessar novas telas

  A sintaxe "id: \.CAMPO" é usada para identificar exclusivamente cada item da lista.

*/

struct Song : Identifiable { //cada item da lista precisa ter um identificador unico para que seja mais facil de identificar.
  var id: Int //UUID
  var name : String
  var artist : String
  var capa : String
}

var arrayMusicas = [
  Song(id: 4, name: "Nome da musica", artist: "nome do artista", capa: "nome da capa")
]


import Foundation //para arquivos de estrutura, o Foundation é a base necessária

struct Aluno {
  var alunoUm: String
  var alunoDois: String
}

var estudantes = [
  Estudantes(nome: "Astolfo", idade: 87),
  Estudantes(nome: "Fulano", idade: 21),
  Estudantes(nome: "Gabriela", idade: 43)
]

/* 

Primeira tela:

Imagem principal, titulo da playlist

Lista de musica com o scrollview

Asyncimage

*/



                ForEach(Song) { song in
                    NavigationLink(destination: MusicView(capa: "\(song.capa)", nome: "\(song.name)", artista: "\(song.artist)")){
                        HStack{
                            AsyncImage(url: URL(string: song.capa)!) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                Image(systemName: "photo.fill")
                            }.frame(width: 40, height: 40)
                                .padding(.top, 12.0)
                            VStack{
                                Text( song.name)
                                    .foregroundStyle(.white)
                                Text(song.artist)
                                    .foregroundStyle(.white)
                                    .font(.caption)
                            }
                            Text("                                                       ")
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.white)
                        }
                    }
                }
