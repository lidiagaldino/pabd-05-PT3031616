-- Questão 1
CREATE TABLE pessoa (
    ID INT,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    idade INT,
    CONSTRAINT idade_valida CHECK (idade >= 0)
);

-- Questão 2
ALTER TABLE pessoa
ADD CONSTRAINT uk_pessoa_dados UNIQUE (ID, nome, sobrenome);

-- Questão 3
ALTER TABLE pessoa
ALTER COLUMN idade SET NOT NULL;


-- Questão 4
CREATE TABLE endereco (
    ID INT PRIMARY KEY,
    rua VARCHAR(200)
);

ALTER TABLE pessoa
ADD COLUMN endereco_id INT;

ALTER TABLE pessoa
ADD CONSTRAINT fk_pessoa_endereco
FOREIGN KEY (endereco_id) 
REFERENCES endereco(ID);