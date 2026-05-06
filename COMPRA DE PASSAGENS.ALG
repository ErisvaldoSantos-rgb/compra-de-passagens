Algoritmo "compra de passagens"

Var
   // Seção de Declarações das variáveis
   Nome, Destino :Caractere

   idade, opcao, tipoPassagem , qtdPassagem:Inteiro

   Salvador , FeiraDeSantana , Alagoinhas , Desconto, totalp:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   totalp <- 0
   Salvador <- 0
   FeiraDeSantana  <- 0
   Alagoinhas <- 0
   Desconto <- 0
   qtdPassagem <- 0


   Repita

      escreval("==== Compras de Passagens  ====")

      escreval("MENU")

      escreval("1 - Cadastrar Passageiro ")

      escreval("2 - Comprar passagem  ")

      escreval("3 - Ver relatório  ")

      escreval("0 - Sair  ")

      leia(opcao)

      escolha opcao

      caso 1

         escreval("Cadastrar Passageiro ")

         repita

            escreval("Digite seu nome: ")

            leia(nome)

            se nome = "" Entao


               escreval("Este nome é incorreto, Digite o nome correspondente  ")

            fimse

         ate nome <> ""


         Repita
            escreval("Digite sua idade: ")

            leia(idade)

            se idade <= 0 Entao

               escreval("Idade inválida tente novamente ")

            fimse

         ate idade > 0

      Caso 2

         repita

            escreval("Compra de passagem: ")

            escreval("1 - Salvador (R$ 50)")

            escreval("2 - Feira de Santana (R$ 30)")

            escreval("3 - Alagoinhas (R$ 20)")

            leia(tipoPassagem)

            escreval("Digite a quantidade de passagens desejada")

            leia(qtdPassagem)

            se (tipoPassagem < 1) ou (tipoPassagem > 3) Entao

               escreval("Tipo inválido tente novamente ")

            fimse

         ate (tipoPassagem >= 1) e (tipoPassagem <= 3)

         se tipoPassagem = 1 Entao

            Destino <- "Salvador"

            Salvador <- 50

            totalp <- qtdPassagem * Salvador

         senao

            se tipoPassagem = 2 Entao

               Destino <- "Feira de Santana"

               Salvador <- 30

               totalp <- qtdPassagem * FeiraDeSantana

            senao

               se tipoPassagem = 3 Entao

                  Destino <- "Alagoinhas"

                  Salvador <- 20

                  totalp <- qtdPassagem * Alagoinhas

               fimse

            fimse


         fimse

         se qtdPassagem > 3 Entao

            Desconto <- (10 * 100)/totalp

            escreval("Desconto de 10 % ")
         senao

            se (idade <= 18) entao

               tipoPassagem <- totalp  / 2

               escreval("Passagem Estudantil ")

            senao

               se (idade >= 60)entao

                  tipoPassagem  <- (20 * 100) / totalp

                  escreval("Passagem idoso ")

               senao


                  escreval("Entrada inválida acesso não permitido para esta idade ")

               fimse

            fimse

         Caso 3

            escreval("==== ver resumo ====")


            se totalp > 0 Entao

               escreval("Nome do passageiro ",nome)

               escreval("Destino escolhido ",Destino)

               escreval("Quantidade de passagens ",qtdPassagem)

               escreval("Total de Passagens  : R$", totalp:5:2)
            senao

               escreval("Nenhuma passagem encontrada ainda ")

            fimse

         Caso 0

            escreval("Sistema encerrado ")

         Outrocaso

            escreval("Opção inválida tente novamente ")

         fimescolha

      ate opcao = 0

Fimalgoritmo