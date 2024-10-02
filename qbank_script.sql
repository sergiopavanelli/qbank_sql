-- Criação da tabela Cliente
CREATE TABLE Cliente (
    CPF VARCHAR(11) PRIMARY KEY,  -- CPF como chave primária
    Nome_Cliente VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    Data_Nascimento DATE,
    Endereco VARCHAR(255)
);

-- Criação da tabela Conta
CREATE TABLE Conta (
    ID_Conta INT PRIMARY KEY,  -- ID_Conta como chave primária
    CPF VARCHAR(11) NOT NULL,  -- Relaciona a conta ao cliente via CPF
    Saldo DECIMAL(15, 2) NOT NULL,
    Data_Criacao DATE NOT NULL,
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF) ON DELETE CASCADE  -- FK ligando Conta ao Cliente via CPF
);


-- Criação da tabela Transacao com Tipo_Transacao usando VARCHAR e CHECK constraint
CREATE TABLE Transacao (
    ID_Transacao INT PRIMARY KEY,  -- ID_Transacao como chave primária
    ID_Conta_Origem INT NOT NULL,  -- Conta de origem
    ID_Conta_Destino INT NOT NULL,  -- Conta de destino
    Valor DECIMAL(15, 2) NOT NULL,
    Data_Transacao DATE NOT NULL,
    Tipo_Transacao VARCHAR(20) NOT NULL,  -- Usando VARCHAR para o tipo de transação
    CONSTRAINT CHK_Tipo_Transacao CHECK (Tipo_Transacao IN ('Transferência', 'Depósito', 'Saque')),  -- Restringe os valores possíveis
    FOREIGN KEY (ID_Conta_Origem) REFERENCES Conta(ID_Conta) ON DELETE CASCADE,  -- FK para Conta de origem
    );
   
   
   -- Criação da tabela Emprestimo
CREATE TABLE Emprestimo (
    ID_Emprestimo INT PRIMARY KEY,  -- ID_Emprestimo como chave primária
    ID_Conta INT NOT NULL,  -- Conta do cliente que solicitou o empréstimo
    Valor DECIMAL(15, 2) NOT NULL,
    Data_Solicitacao DATE NOT NULL,
    Juros DECIMAL(5, 2) NOT NULL,
    Prazo INT NOT NULL,  -- Prazo em meses
    FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta) ON DELETE CASCADE  -- FK ligando Emprestimo a Conta
);

-- Criação da tabela CartaoCredito
CREATE TABLE CartaoCredito (
    ID_Cartao INT PRIMARY KEY,  -- ID_Cartao como chave primária
    ID_Conta INT NOT NULL,  -- Conta associada ao cartão de crédito
    Limite DECIMAL(15, 2) NOT NULL,
    Data_Aprovacao DATE NOT NULL,
    Fatura_Atual DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta) ON DELETE CASCADE  -- FK ligando CartaoCredito a Conta
);

-- Criação da tabela PagamentoServico
CREATE TABLE PagamentoServico (
    ID_Pagamento INT PRIMARY KEY,  -- ID_Pagamento como chave primária
    ID_Conta INT NOT NULL,  -- Conta associada ao pagamento do serviço
    Servico VARCHAR(100) NOT NULL,
    Valor DECIMAL(15, 2) NOT NULL,
    Data_Pagamento DATE NOT NULL,
    FOREIGN KEY (ID_Conta) REFERENCES Conta(ID_Conta) ON DELETE CASCADE  -- FK ligando PagamentoServico a Conta
);









