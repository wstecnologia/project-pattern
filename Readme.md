## ESLint e Prettier
- **ESLint**: Utilizado para identificar e corrigir problemas no código.
- **Prettier**: Usado para garantir um código bem formatado.

## Verifique o código com o ESLint:

``` bash 
npm run lint 
Formate o código com o Prettier:
```

``` bash
Copiar código
npm run prettier
```

## Hooks de Pré-commit
Foi configurado o husky e o lint-staged para garantir que o código seja validado e formatado automaticamente antes de cada commit. Isso ajuda a manter o padrão de código e evitar problemas no repositório.

## Cobertura de Código
É importante garantir que o código esteja bem testado. O relatório de cobertura ajuda a identificar áreas que precisam de mais atenção.

## Documentação da API
Este projeto utiliza Swagger para documentar a API. Para acessar a documentação, inicie o servidor e acesse:

``` bash
Copiar código
http://localhost:3000/api-docs
```

# Scripts
### Desenvolvimento
- **npm run dev:** Inicia o servidor em modo de desenvolvimento, com reinicialização automática (nodemon) quando houver alterações no código.
- **npm run lint:** Executa o ESLint para verificar se o código segue os padrões estabelecidos.
- **npm run prettier:** Formata o código de acordo com as regras do Prettier.

### Produção
- **npm run build:** Compila o TypeScript para JavaScript e gera a pasta dist com o código de produção.
- **npm start:** Inicia o servidor utilizando o código já compilado na pasta dist.

### Testes
- **npm run test:** Executa os testes utilizando o jest.
- **npm run test:coverage:** Executa os testes e gera um relatório de cobertura de código.

# Dependencies

### Pacotes essenciais para o funcionamento da aplicação:
- **express:**   Framework para construir APIs.
- **pg-promise:** Biblioteca para interagir com bancos de dados PostgreSQL usando Promises.
- **swagger-jsdoc, swagger-ui-express:** Ferramentas para gerar e exibir documentação de API com Swagger.
- **uuid:** Geração de UUIDs (identificadores únicos).
- **mongoose:** ODM (Object Data Modeling) para trabalhar com MongoDB


# DevDependencies

### Pacotes relacionados ao desenvolvimento:

- **@types/express, @types/node:** Tipos TypeScript para bibliotecas como Express e Node.js.
- **eslint, prettier:** Ferramentas de linting e formatação de código.
- **jest:** Biblioteca de testes.
- **ts-node, ts-node-dev:** Ferramentas para rodar TypeScript sem necessidade de compilação prévia.
- **tsconfig-paths:** Suporte para resolução de caminhos com base nas configurações do tsconfig.json

### Sugestão de estrutura de pastas para a Clean Architecture. 

Nesta abordagem, os componentes são organizados de forma modular, separando claramente as responsabilidades e facilitando a manutenção e evolução do código.

``` bash
├── src
│   ├── application
│   │   ├── use-cases
│   │   │   └── exemploUseCase.ts
│   │   └── services
│   │       └── exemploService.ts
│   ├── domain
│   │   ├── entities
│   │   │   └── exemploEntity.ts
│   │   ├── repositories
│   │   │   └── exemploRepository.ts
│   │   └── value-objects
│   │       └── exemploValueObject.ts
│   ├── infrastructure
│   │   ├── database
│   │   │   └── exemploModel.ts
│   │   ├── mappers
│   │   │   └── exemploMapper.ts
│   │   ├── repositories
│   │   │   └── exemploRepositoryImpl.ts
│   │   ├── webserver
│   │   │   ├── express
│   │   │   │   ├── routes
│   │   │   │   │   └── exemploRoute.ts
│   │   │   └── middlewares
│   │   │       └── exemploMiddleware.ts
│   ├── interfaces
│   │   ├── controllers
│   │   │   └── exemploController.ts
│   │   └── presenters
│   │       └── exemploPresenter.ts
│   └── index.ts
├── tests
│   └── exemplo.test.ts
├── .env
├── .eslintrc.js
├── .prettierrc
├── jest.config.js
└── tsconfig.json
```
 
### Descrição da Estrutura:
- **1. src/application**
use-cases: Contém os casos de uso da aplicação. Aqui é onde a lógica de negócios se concentra.
services: Serviços que encapsulam regras ou lógicas específicas que podem ser reutilizadas por múltiplos casos de uso.
- **2. src/domain**
entities: Define as entidades de domínio. Representa as regras de negócios centrais e invariantes.
repositories: Interfaces para os repositórios de dados. Elas são usadas para definir os contratos que serão implementados pela infraestrutura.
value-objects: Contém objetos de valor, que são componentes imutáveis e podem representar atributos do domínio.
- **3. src/infrastructure**
database: Contém a implementação da camada de persistência de dados, como os modelos do banco de dados (ex: Sequelize, Mongoose).
mappers: Realiza a transformação entre as entidades de domínio e os modelos da infraestrutura.
repositories: Implementações concretas dos repositórios definidos no domínio. Essa camada conhece a infraestrutura de dados, como bancos de dados ou APIs externas.
webserver: Configuração do servidor, como Express, além de middlewares e rotas.
- **4. src/interfaces**
controllers: Camada de entrada da aplicação (interface com o mundo externo). Recebe as requisições HTTP e delega as chamadas aos casos de uso.
presenters: Transforma os dados da camada de aplicação em um formato que será retornado para os usuários.
- **5. tests**
Contém os testes unitários, de integração, ou de aceitação. Idealmente, o nome dos arquivos deve seguir a nomenclatura dos casos de uso ou módulos testados.