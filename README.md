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

### 4. Pizzaria
- Banco de dados: `db_pizzaria_legal`
- Tabelas: `tb_categorias` e `tb_pizzas`
- Recursos trabalhados:
  - Relacionamento entre tabelas com chave estrangeira
  - Consultas com INNER JOIN
- Funcionalidades implementadas:
  - Inserção de categorias
  - Inserção de pizzas
  - Consulta de todas as pizzas
  - Consulta filtrando pizzas por categoria (ex: doce)
- Script: `exercicio_db_pizzaria.sql`
  
---

### 5. Farmácia
- Banco de dados: `db_farmacia_bem_estar`
- Tabelas: `tb_categorias` e `tb_produtos`
- Recursos trabalhados:
  - Relação 1:N com FOREIGN KEY
  - Consultas com operadores (LIKE, BETWEEN, > etc)
- Funcionalidades implementadas:
  - Inserção de 5 categorias
  - Inserção de 8 produtos
  - Seleção de produtos com preço > 50
  - Seleção de produtos com preço entre 5 e 60
  - Produtos com nome contendo a letra C (LIKE "%c%")
  - Consulta com INNER JOIN
- Script: `exercicio_db_farmacia.sql`
  
---

### 6. Plataforma de Cursos Online (EAD)
- Banco de dados: `db_curso_da_minha_vida`
- Tabelas: `tb_categorias` e `tb_cursos`
- Recursos trabalhados:
  - Inserção de dados relacionados
  - Filtros de intervalos
  - Buscas textuais com LIKE
  - Joins entre tabelas
- Funcionalidades implementadas:
  - Inserção de 5 categorias (JavaScript, Java, Banco de Dados, Design, Data Science)
  - Inserção de 8 cursos
  - Seleção de cursos com preço > 500
  - Seleção de cursos com preço entre 600 e 1000
  - Cursos com a letra J no nome
  - INNER JOIN entre cursos e categorias
  - INNER JOIN filtrando por uma categoria específica
- Script: `exercicio_db_cursos.sql`
  
---

## Como utilizar
1. Clonar este repositório:
   ```bash
   git clone https://github.com/marianaabandeira/exercicios1_mysql.git

