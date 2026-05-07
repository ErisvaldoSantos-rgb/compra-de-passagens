algoritmo "Compra-De-Passagens"
// Disciplina   : Lógica de Programação
// Professor(a)   :  Giselle

var
   nome, destino: caractere

   idade, opcao, tipoPassagem, qtdPassagem:inteiro

   precoUnit, totalp: real

inicio

   totalp  <- 0

   opcao   <- -1

   repita


      escreval("==== COMPRA DE PASSAGENS ====")

      escreval("1 - Cadastrar passageiro")

      escreval("2 - Comprar passagem")

      escreval("3 - Ver resumo")

      escreval("0 - Sair")

      leia(opcao)

      escolha opcao

      caso 1

         escreval("=== Cadastro de Passageiro ===")

         repita

            escreva("Nome: ")

            leia(nome)

            se nome = "" entao

               escreval("Nome invalido. Tente novamente.")

            fimse

         ate nome <> ""

         repita

            escreva("Idade: ")

            leia(idade)

            se idade <= 0 entao

               escreval("Idade invalida. Tente novamente.")

            fimse

         ate idade > 0

         escreval("Passageiro cadastrado com sucesso!")

      caso 2

         escreval("=== Compra de Passagem ===")

         repita

            escreval("Destino:")

            escreval("  1 - Salvador       (R$ 50)")

            escreval("  2 - Feira de Santana (R$ 30)")

            escreval("  3 - Alagoinhas     (R$ 20)")

            escreva("Opcao: ")

            leia(tipoPassagem)

            se (tipoPassagem < 1) ou (tipoPassagem > 3) entao

               escreval("Destino invalido. Tente novamente.")

            fimse

         ate (tipoPassagem >= 1) e (tipoPassagem <= 3)

         se tipoPassagem = 1 entao

            destino   <- "Salvador"

            precoUnit <- 50

         senao

            se tipoPassagem = 2 entao

               destino   <- "Feira de Santana"

               precoUnit <- 30

            senao

               destino   <- "Alagoinhas"

               precoUnit <- 20

            fimse

         fimse

         escreva("Quantidade de passagens: ")

         leia(qtdPassagem)

         totalp <- qtdPassagem * precoUnit

         se idade >= 60 entao

            se qtdPassagem <= 2 entao

               totalp <- 0

               escreval("Gratuidade aplicada (idoso).")

            senao

               escreval("Limite de 2 passagens gratuitas excedido.")

               escreval("Desconto de 20% aplicado.")

               totalp <- totalp * 0.80

            fimse

         senao

            se idade <= 18 entao

               totalp <- totalp * 0.50

               escreval("Desconto estudantil de 50% aplicado.")

            fimse

         fimse

         se qtdPassagem >= 3 entao

            totalp <- totalp * 0.90

            escreval("Desconto de 10% por quantidade aplicado.")

         fimse

         escreval("Compra realizada com sucesso!")

      caso 3

         escreval("===== RESUMO DA COMPRA =====")

         se (totalp >= 0) e (qtdPassagem > 0) entao

            escreval("Nome do passageiro : ", nome)

            escreval("Destino escolhido  : ", destino)

            escreval("Qtd de passagens   : ", qtdPassagem)

            escreval("Total da compra    : R$", totalp:5:2)

         senao

            escreval("Nenhuma passagem comprada ainda.")

         fimse

      caso 0

         escreval("Sistema encerrado.")

      outrocaso

         escreval("Opcao invalida. Tente novamente.")

      fimescolha

   ate opcao = 0

fimalgoritmo
