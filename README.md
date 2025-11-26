# Exercícios de MySQL

Este repositório contém os exercícios de MySQL realizados para prática de criação de bancos de dados, tabelas, inserção de dados, consultas (`SELECT`) e atualizações (`UPDATE`).  

Todos os scripts estão organizados por atividade e prontos para serem executados em um servidor MySQL.

---

## Estrutura dos Exercícios

### 1. RH da Empresa
- Banco de dados: `rh_empresa`
- Tabela: `colaboradores_empresa`
- Atributos:
  - `id` (chave primária)
  - `nome`
  - `cargo`
  - `idade`
  - `data_admissao`
  - `salario`
- Funcionalidades implementadas:
  - Inserção de 5 colaboradores
  - Seleção de colaboradores com salário maior que 2000
  - Seleção de colaboradores com salário menor que 2000
  - Atualização do salário de um colaborador
- Script: `exercicio_db_rh.sql`

---

### 2. E-commerce
- Banco de dados: `db_ecommerce`
- Tabela: `tb_produtos`
- Atributos:
  - `id` (chave primária)
  - `nome`
  - `categoria`
  - `quantidade`
  - `data_cadastro`
  - `preco`
- Funcionalidades implementadas:
  - Inserção de 8 produtos
  - Seleção de produtos com preço maior que 500
  - Seleção de produtos com preço menor que 500
  - Atualização do nome de um produto
- Script: `exercicio_db_ecommerce.sql`

---

### 3. Registro Escolar
- Banco de dados: `db_escola`
- Tabela: `estudantes`
- Atributos:
  - `id` (chave primária)
  - `nome`
  - `ano`
  - `nota_final`
  - `frequencia`
- Funcionalidades implementadas:
  - Inserção de 8 estudantes
  - Seleção de estudantes com nota maior que 7.0
  - Seleção de estudantes com nota menor que 7.0
  - Atualização da nota de um estudante
- Script: `exercicio_db_escola.sql`

---

## Como utilizar
1. Clonar este repositório:
   ```bash
   git clone https://github.com/marianaabandeira/exercicios1_mysql.git
