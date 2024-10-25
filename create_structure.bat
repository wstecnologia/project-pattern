@echo off
mkdir src\application\use-cases
mkdir src\application\services
mkdir src\domain\entities
mkdir src\domain\repositories
mkdir src\domain\value-objects
mkdir src\infrastructure\database
mkdir src\infrastructure\mappers
mkdir src\infrastructure\repositories
mkdir src\infrastructure\webserver\express\routes
mkdir src\infrastructure\webserver\middlewares
mkdir src\infrastructure\webserver\swagger
mkdir src\interfaces\controllers
mkdir src\interfaces\presenters
mkdir src\config
mkdir tests

echo > src\application\use-cases\exemploUseCase.ts
echo > src\application\services\exemploService.ts
echo > src\domain\entities\exemploEntity.ts
echo > src\domain\repositories\exemploRepository.ts
echo > src\domain\value-objects\exemploValueObject.ts
echo > src\infrastructure\database\exemploModel.ts
echo > src\infrastructure\mappers\exemploMapper.ts
echo > src\infrastructure\repositories\exemploRepositoryImpl.ts
echo > src\infrastructure\webserver\middlewares\exemploMiddleware.ts
echo > src\interfaces\controllers\exemploController.ts
echo > src\interfaces\presenters\exemploPresenter.ts
echo > tests\exemplo.test.ts

:: Criar arquivo principal para as rotas 

echo import { Router } from "express"; > src\infrastructure\webserver\express\routes\index.ts
echo. >> src\infrastructure\webserver\express\routes\index.ts
echo const router = Router() >> src\infrastructure\webserver\express\routes\index.ts
echo. >> src\infrastructure\webserver\express\routes\index.ts
echo. >> src\infrastructure\webserver\express\routes\index.ts
echo router.get("/teste", async (req, res)^=^>^{ >> src\infrastructure\webserver\express\routes\index.ts
echo  res.json({message: `Olá mundo ${new Date().toLocaleString()}`}) >> src\infrastructure\webserver\express\routes\index.ts
echo }) >> src\infrastructure\webserver\express\routes\index.ts
echo. >> src\infrastructure\webserver\express\routes\index.ts
echo export default router >> src\infrastructure\webserver\express\routes\index.ts


:: Criar arquivo Server.ts
echo import dotenv from "dotenv" > src\config\server.ts
echo import express from "express" >> src\config\server.ts
echo import swaggerUi from "swagger-ui-express" >> src\config\server.ts
echo dotenv.config() >> src\config\server.ts
echo. >> src\config\server.ts
echo import router from "@/infrastructure/webserver/express/routes" >> src\config\server.ts
echo import { swaggerSpec } from "./swagger" >> src\config\server.ts
echo. >> src\config\server.ts
echo const app = express() >> src\config\server.ts
echo. >> src\config\server.ts
echo app.use(express.json()) >> src\config\server.ts
echo app.use(express.urlencoded({ extended: true })) >> src\config\server.ts
echo. >> src\config\server.ts
echo app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec)) >> src\config\server.ts
echo. >> src\config\server.ts
echo app.use("/api", router) >> src\config\server.ts
echo. >> src\config\server.ts
echo export default app >> src\config\server.ts

:: Criar arquivo Swagger.ts
echo import swaggerJsdoc from "swagger-jsdoc" > src\config\swagger.ts
echo. >> src\config\swagger.ts
echo import { orderPaths } from "../infrastructure/webserver/swagger/orderPaths" >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo const combinetPaths = { >> src\config\swagger.ts
echo   ...orderPaths, >> src\config\swagger.ts
echo } >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo const options = { >> src\config\swagger.ts
echo definition: { >> src\config\swagger.ts
echo    openapi: "3.0.0", >> src\config\swagger.ts
echo    info: { >> src\config\swagger.ts
echo      title: "Techchalleger Microservice Orders - Lanchonete WS Documentation", >> src\config\swagger.ts
echo      version: "1.0.0", >> src\config\swagger.ts
echo    }, >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo    paths: combinetPaths, >> src\config\swagger.ts
echo  }, >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo.  apis: [], >> src\config\swagger.ts
echo } >> src\config\swagger.ts
echo. >> src\config\swagger.ts
echo export const swaggerSpec = swaggerJsdoc(options) >> src\config\swagger.ts

:: Criar arquivo orderPaths.ts
echo export const orderPaths = { > src\infrastructure\webserver\swagger\orderPaths.ts  
echo  "/api/teste": { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo    get: { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo      tags: ["Orders"], >> src\infrastructure\webserver\swagger\orderPaths.ts
echo      summary: "Testar rota", >> src\infrastructure\webserver\swagger\orderPaths.ts      
echo      responses: { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        200: { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo          description: "Success", >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        }, >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        400: { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo          description: "Invalid Request", >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        }, >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        401: { >> src\infrastructure\webserver\swagger\orderPaths.ts
echo          description: "Invalid Access", >> src\infrastructure\webserver\swagger\orderPaths.ts
echo        },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo        404: {>> src\infrastructure\webserver\swagger\orderPaths.ts
echo          description: "List of Orders not Localized",>> src\infrastructure\webserver\swagger\orderPaths.ts
echo        },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo        500: {>> src\infrastructure\webserver\swagger\orderPaths.ts
echo          description: "Internal Server Error",>> src\infrastructure\webserver\swagger\orderPaths.ts
echo        },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo      },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo    },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo  },>> src\infrastructure\webserver\swagger\orderPaths.ts
echo } >> src\infrastructure\webserver\swagger\orderPaths.ts

:: Criar arquivo index.ts
echo import app from "./config/server"; > src\index.ts
echo. >> src\index.ts
echo app.listen(3000,^()^=^>^{ >> src\index.ts
echo   console.log(^`Server is running in port 3000^`); >> src\index.ts
echo }); >> src\index.ts

echo node_modules/ > .gitignore
echo package-lock.json >> .gitignore
echo *.bat >> .gitignore

:: Detectar o sistema operacional deletar .git do repositorio padrão
echo  Detectar o sistema operacional deletar .git do repositorio padrão
ver > nul
if %ERRORLEVEL% == 0 (
    echo Windows detectado
    rmdir /S /Q ".git"
) else (
    echo Linux detectado
    bash -c "rm -rf .git"
)

:: Iniciar novo repositorio git
echo Iniciar novo repositorio git
git init

if %ERRORLEVEL% NEQ 0 (
    echo Erro ao inicializar o repositório git.
    pause
    exit /b
)

:: Instalar dependências
echo Instalar dependências
npm install

if %ERRORLEVEL% NEQ 0 (
    echo Erro ao instalar as dependências do npm.
    pause
    exit /b
)

:: Iniciar aplicação de teste
echo Iniciar aplicação de teste
start cmd /k "npm run dev"

:: Aguardar alguns segundos para o servidor iniciar
timeout /t 5 /nobreak > nul

:: Abrir a URL http://localhost:3000 no navegador padrão
echo Abrir a URL http://localhost:3000 no navegador padrão
start http://localhost:3000/api-docs/

echo Estrutura criada com sucesso!

pause