TRUNCATE TABLE setor RESTART IDENTITY CASCADE;
TRUNCATE TABLE categoria RESTART IDENTITY CASCADE;
TRUNCATE TABLE marca RESTART IDENTITY CASCADE;
TRUNCATE TABLE regiao RESTART IDENTITY CASCADE;
TRUNCATE TABLE tipo_requisicao RESTART IDENTITY CASCADE;
TRUNCATE TABLE Funcionario RESTART IDENTITY CASCADE;
TRUNCATE TABLE Fornecedor RESTART IDENTITY CASCADE;
TRUNCATE TABLE Requisicao RESTART IDENTITY CASCADE;
TRUNCATE TABLE Produto RESTART IDENTITY CASCADE;
TRUNCATE TABLE Pre_Lista RESTART IDENTITY CASCADE;
TRUNCATE TABLE lote RESTART IDENTITY CASCADE;
TRUNCATE TABLE historico RESTART IDENTITY CASCADE;
TRUNCATE TABLE item_pre_lista RESTART IDENTITY CASCADE;

CREATE TABLE IF NOT EXISTS setor (
    id_setor SERIAL,
    nome VARCHAR(200) NOT NULL,
    descricao TEXT,

    CONSTRAINT pk_setor PRIMARY KEY (id_setor)
);

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria SERIAL,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,

    CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS marca (
    id_marca SERIAL,
    nome VARCHAR(255) NOT NULL,

    CONSTRAINT pk_marca PRIMARY KEY (id_marca)
);

CREATE TABLE IF NOT EXISTS endereco (
    id_endereco SERIAL,
    estado VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    complemento TEXT,

    CONSTRAINT pk_endereco PRIMARY KEY (id_endereco)
);

CREATE TABLE IF NOT EXISTS tipo_requisicao (
    id_tipo_requisicao SERIAL,
    tipo VARCHAR(30) NOT NULL,

    CONSTRAINT pk_tipo_requisicao PRIMARY KEY (id_tipo_requisicao)
);

CREATE TABLE IF NOT EXISTS funcionario (
    id_funcionario SERIAL,
    fk_setor INTEGER NOT NULL,
    nome VARCHAR(200) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(15),
    cpf VARCHAR(14) NOT NULL,
    dt_admissao DATE NOT NULL DEFAULT CURRENT_DATE,
    status VARCHAR(255) NOT NULL DEFAULT 'Ativo',
    is_admin BOOLEAN NOT NULL DEFAULT FALSE,

    CONSTRAINT pk_funcionario PRIMARY KEY (id_funcionario),
    CONSTRAINT uq_funcionario_cpf UNIQUE (cpf),
    CONSTRAINT fk_funcionario_setor FOREIGN KEY (fk_setor) REFERENCES setor(id_setor)
);

CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor SERIAL,
    fk_endereco INTEGER NOT NULL,
    nome_juridico VARCHAR(150) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    email VARCHAR(255) NOT NULL,
    nota_vpq INTEGER NOT NULL,

    CONSTRAINT pk_fornecedor PRIMARY KEY (id_fornecedor),
    CONSTRAINT uq_fornecedor_cnpj UNIQUE (cnpj),
    CONSTRAINT fk_fornecedor_endereco FOREIGN KEY (fk_endereco) REFERENCES endereco(id_endereco)
);

CREATE TABLE IF NOT EXISTS produto (
    id_produto SERIAL,
    fk_fornecedor INTEGER NOT NULL,
    fk_marca INTEGER NOT NULL,
    fk_categoria INTEGER NOT NULL,
    nome VARCHAR(40) NOT NULL,
    unidade_medida VARCHAR(255) NOT NULL,
    estoque_min INTEGER NOT NULL,
    estoque_max INTEGER NOT NULL,
    descricao TEXT,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    CONSTRAINT pk_produto PRIMARY KEY (id_produto),
    CONSTRAINT fk_produto_marca FOREIGN KEY (fk_marca)REFERENCES marca(id_marca),
    CONSTRAINT fk_produto_categoria FOREIGN KEY (fk_categoria) REFERENCES categoria(id_categoria),
    CONSTRAINT fk_produto_fornecedor FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor(id_fornecedor),
    CONSTRAINT chk_produto_unidade CHECK (unidade_medida IN ('KG', 'L', 'G', 'UN')),
    CONSTRAINT chk_produto_estoque CHECK (estoque_min >= 0 AND estoque_max >= estoque_min)
);

CREATE TABLE IF NOT EXISTS requisicao (
    id_requisicao SERIAL,
    fk_tipo_requisicao INTEGER NOT NULL,
    fk_funcionario_solicitante INTEGER NOT NULL,
    fk_funcionario_aprovador INTEGER NOT NULL,
    fk_produto INTEGER NOT NULL,
    quantidade_prod INTEGER NOT NULL,
    motivo VARCHAR(80) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Pendente',
    dt_requisicao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_requisicao PRIMARY KEY (id_requisicao),
    CONSTRAINT fk_requisicao_tipo FOREIGN KEY (fk_tipo_requisicao) REFERENCES tipo_requisicao(id_tipo_requisicao),
    CONSTRAINT fk_requisicao_solicitante FOREIGN KEY (fk_funcionario_solicitante) REFERENCES funcionario(id_funcionario),
    CONSTRAINT fk_requisicao_aprovador FOREIGN KEY (fk_funcionario_aprovador) REFERENCES funcionario(id_funcionario),
    CONSTRAINT fk_requisicao_produto FOREIGN KEY (fk_produto) REFERENCES produto(id_produto),
    CONSTRAINT chk_requisicao_quantidade CHECK (quantidade_prod > 0),
    CONSTRAINT chk_requisicao_status CHECK (status IN ('Pendente', 'Aprovada', 'Rejeitada'))
);

CREATE TABLE IF NOT EXISTS lote (
    id_lote SERIAL,
    fk_produto INTEGER NOT NULL,
    numero_lote VARCHAR(80) NOT NULL,
    qtd_inicial INTEGER NOT NULL,
    qtd_atual INTEGER NOT NULL,
    dt_entrada DATE NOT NULL,
    dt_validade DATE NOT NULL,
    valor_compra NUMERIC(10,2) NOT NULL,
    nota_fiscal VARCHAR(255) NOT NULL,

    CONSTRAINT pk_lote PRIMARY KEY (id_lote),
    CONSTRAINT fk_lote_produto FOREIGN KEY (fk_produto) REFERENCES produto(id_produto),
    CONSTRAINT chk_lote_quantidade CHECK (qtd_inicial >= 0 AND qtd_atual >= 0 AND qtd_atual <= qtd_inicial),
    CONSTRAINT chk_lote_validade CHECK (dt_validade >= dt_entrada),
    CONSTRAINT chk_lote_valor CHECK (valor_compra >= 0)
);

CREATE TABLE IF NOT EXISTS historico (
    id_historico SERIAL,
    fk_funcionario INTEGER NOT NULL,
    fk_lote INTEGER NOT NULL,
    tipo_movimentacao VARCHAR(30) NOT NULL,
    motivo VARCHAR(255) NOT NULL,
    dt_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_historico PRIMARY KEY (id_historico),
    CONSTRAINT fk_historico_funcionario FOREIGN KEY (fk_funcionario) REFERENCES funcionario(id_funcionario),
    CONSTRAINT fk_historico_lote FOREIGN KEY (fk_lote) REFERENCES lote(id_lote),
    CONSTRAINT chk_historico_tipo CHECK (tipo_movimentacao IN ('ENTRADA_OCR', 'RETIRADA_PRODUCAO', 'AJUSTE', 'PERDA'))
);

CREATE TABLE IF NOT EXISTS pre_lista (
    id_pre_lista SERIAL,
    dt_lista DATE NOT NULL DEFAULT CURRENT_DATE,

    CONSTRAINT pk_pre_lista PRIMARY KEY (id_pre_lista)
);

CREATE TABLE IF NOT EXISTS item_pre_lista (
    id_item_lista SERIAL,
    fk_pre_lista INTEGER NOT NULL,
    fk_fornecedor INTEGER NOT NULL,
    fk_produto INTEGER NOT NULL,
    qtd INTEGER NOT NULL,

    CONSTRAINT pk_item_pre_lista PRIMARY KEY (id_item_lista),
    CONSTRAINT fk_item_pre_lista_lista FOREIGN KEY (fk_pre_lista) REFERENCES pre_lista(id_pre_lista),
    CONSTRAINT fk_item_pre_lista_fornecedor FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor(id_fornecedor),
    CONSTRAINT fk_item_pre_lista_produto FOREIGN KEY (fk_produto) REFERENCES produto(id_produto),
    CONSTRAINT chk_item_pre_lista_qtd CHECK (qtd > 0)
);

CREATE TABLE IF NOT EXISTS telefone (
    id_telefone SERIAL,
    fk_fornecedor INTEGER NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    descricao TEXT,

    CONSTRAINT pk_telefone PRIMARY KEY (id_telefone),
    CONSTRAINT fk_telefone_fornecedor FOREIGN KEY (fk_fornecedor) REFERENCES fornecedor(id_fornecedor)
);
