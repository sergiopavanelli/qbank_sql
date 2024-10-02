# Projeto QBank - Banco de Dados

Este projeto contém o script para a criação do banco de dados do sistema bancário **QBank**. O sistema é composto por várias funcionalidades, como gerenciamento de contas, transações, empréstimos, cartões de crédito e pagamentos de serviços.

## Estrutura do Banco de Dados

O banco de dados foi modelado com base nas entidades e relações envolvidas no sistema. As principais tabelas e suas funções são as seguintes:

### Tabelas Criadas:

1. **Cliente**
   - Armazena informações sobre os clientes do sistema.
   - **Chave primária**: `CPF`
   - **Relacionamentos**:
     - Cada cliente pode ter uma ou mais contas bancárias associadas.

2. **Conta**
   - Armazena informações sobre as contas bancárias.
   - **Chave primária**: `ID_Conta`
   - **Relacionamentos**:
     - Cada conta está associada a um cliente (`CPF` como chave estrangeira).
     - Cada conta pode ter várias transações, empréstimos, cartões de crédito e pagamentos de serviços.

3. **Transacao**
   - Armazena as transações realizadas entre contas.
   - **Chave primária**: `ID_Transacao`
   - **Relacionamentos**:
     - Cada transação envolve uma conta de origem e uma conta de destino (relacionadas por `ID_Conta`).

4. **Emprestimo**
   - Armazena informações sobre os empréstimos solicitados pelos clientes.
   - **Chave primária**: `ID_Emprestimo`
   - **Relacionamentos**:
     - Cada empréstimo está associado a uma conta bancária (`ID_Conta` como chave estrangeira).

5. **CartaoCredito**
   - Armazena as informações sobre os cartões de crédito solicitados pelos clientes.
   - **Chave primária**: `ID_Cartao`
   - **Relacionamentos**:
     - Cada cartão de crédito está associado a uma conta bancária (`ID_Conta` como chave estrangeira).

6. **PagamentoServico**
   - Armazena os pagamentos de serviços realizados pelos clientes.
   - **Chave primária**: `ID_Pagamento`
   - **Relacionamentos**:
     - Cada pagamento de serviço está associado a uma conta bancária (`ID_Conta` como chave estrangeira).

## Tecnologias Utilizadas

- **MySQL** (ou outro banco de dados relacional compatível)
- **SQL** para criação de tabelas e relacionamento entre elas.

## Scripts DDL

Os scripts de criação de tabelas estão disponíveis no repositório e seguem as definições de chaves primárias, chaves estrangeiras e restrições de integridade.


## MER (arquivo png)

![qbank-estudante](https://github.com/user-attachments/assets/df50fa44-e13d-48d6-bcd1-571c1f5ecfd9)


