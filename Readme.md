## Dependencies

# Pacotes essenciais para o funcionamento da aplicação:
  > express:   Framework para construir APIs.
  > pg-promise: Biblioteca para interagir com bancos de dados PostgreSQL usando Promises.
  > swagger-jsdoc, swagger-ui-express: Ferramentas para gerar e exibir documentação de API com Swagger.
  > uuid: Geração de UUIDs (identificadores únicos).
  > mongoose: ODM (Object Data Modeling) para trabalhar com MongoDB

## DevDependencies

# Pacotes relacionados ao desenvolvimento:

  > @types/express, @types/node: Tipos TypeScript para bibliotecas como Express e Node.js.
  > eslint, prettier: Ferramentas de linting e formatação de código.
  > jest: Biblioteca de testes.
  > ts-node, ts-node-dev: Ferramentas para rodar TypeScript sem necessidade de compilação prévia.
  > tsconfig-paths: Suporte para resolução de caminhos com base nas configurações do tsconfig.json

## Scripts - Separarados por ambientes de execução (produção e desenvolvimento)

"scripts": {
  "test:coverage": "jest --coverage",
  "start": "node dist/index.js",
  "build": "tsc -p tsconfig.json",
  "dev": "ts-node-dev -r tsconfig-paths/register --transpile-only --respawn --ignore-watch node_modules src/index.ts"
}


## Testes com cobertura de código
Uma boa prática é garantir que seus testes também estejam verificando a cobertura do código. Isso pode ser feito com o jest e o pacote jest-coverage.

"scripts": {
  "test:coverage": "jest --coverage"
}

## Configurar ESLint e Prettier adequadamente
Arquivos .eslintrc.js e .prettierrc

## Husky e Lint-Staged
Ferramentas como husky e lint-staged podem ser úteis para adicionar ganchos de pré-commit que garantem que o código está sempre bem formatado e validado antes de ser enviado para o controle de versão. Isso melhora a qualidade do código e a consistência do repositório

"husky": {
  "hooks": {
    "pre-commit": "lint-staged"
  }
},
"lint-staged": {
  "*.ts": [
    "eslint --fix",
    "prettier --write",
    "git add"
  ]
}
