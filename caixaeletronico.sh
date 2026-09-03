# ---- Dados iniciais (estado do sistema) --------------------
NOME="Fabio"
SALDO=1000
EXTRATO=""   # vai guardando o histórico de operações

# ---- Laço principal: fica de plantão até escolher "Sair" ---
while true
do
    # Limpa a tela a cada volta para o menu ficar organizado
    clear

    echo "================================"
    echo "        CAIXA ELETRÔNICO"
    echo "================================"
    echo "Cliente: $NOME"
    echo "--------------------------------"
    echo "1 - Consultar saldo"
    echo "2 - Depositar"
    echo "3 - Sacar"
    echo "4 - Extrato"
    echo "5 - Sair"
    echo "================================"
    read -p "Digite uma opção: " OPCAO

    # ---- Painel de botões (case) ---------------------------
    case "$OPCAO" in

        1)  # ---------- Consultar saldo ----------
            echo ""
            echo ">> Seu saldo atual é: R\$ $SALDO"
            ;;

        2)  # ---------- Depositar ----------
            echo ""
            read -p "Valor do depósito: R\$ " VALOR

            # Valida se digitou apenas números
            if [[ "$VALOR" =~ ^[0-9]+$ ]] && [ "$VALOR" -gt 0 ]
            then
                SALDO=$(( SALDO + VALOR ))
                EXTRATO="$EXTRATO\nDepósito: +R\$ $VALOR"
                echo ">> Depósito realizado! Novo saldo: R\$ $SALDO"
            else
                echo ">> Valor inválido. Digite apenas números positivos."
            fi
            ;;

        3)  # ---------- Sacar ----------
            echo ""
            read -p "Valor do saque: R\$ " VALOR

            if [[ "$VALOR" =~ ^[0-9]+$ ]] && [ "$VALOR" -gt 0 ]
            then
                if [ "$VALOR" -le "$SALDO" ]
                then
                    SALDO=$(( SALDO - VALOR ))
                    EXTRATO="$EXTRATO\nSaque:   -R\$ $VALOR"
                    echo ">> Saque realizado! Novo saldo: R\$ $SALDO"
                else
                    echo ">> Saldo insuficiente. Seu saldo é R\$ $SALDO."
                fi
            else
                echo ">> Valor inválido. Digite apenas números positivos."
            fi
            ;;

        4)  # ---------- Extrato ----------
            echo ""
            echo "========== EXTRATO =========="
            if [ -z "$EXTRATO" ]
            then
                echo "Nenhuma movimentação registrada."
            else
                echo -e "$EXTRATO"
            fi
            echo "-----------------------------"
            echo "Saldo atual: R\$ $SALDO"
            echo "============================="
            ;;

        5)  # ---------- Sair ----------
            echo ""
            echo ">> Obrigado por usar o Caixa Eletrônico, $NOME. Até logo!"
            break   # encerra o laço while
            ;;

        *)  # ---------- Qualquer outra coisa ----------
            echo ""
            echo ">> Opção inválida! Escolha um número de 1 a 5."
            ;;
    esac

    # Pausa para o usuário ler a mensagem antes de voltar ao menu
    echo ""
    read -p "Pressione ENTER para continuar..."
done
