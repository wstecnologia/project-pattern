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