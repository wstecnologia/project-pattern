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
mkdir src\interfaces\controllers
mkdir src\interfaces\presenters
mkdir tests

type nul > src\application\use-cases\exemploUseCase.ts
type nul > src\application\services\exemploService.ts
type nul > src\domain\entities\exemploEntity.ts
type nul > src\domain\repositories\exemploRepository.ts
type nul > src\domain\value-objects\exemploValueObject.ts
type nul > src\infrastructure\database\exemploModel.ts
type nul > src\infrastructure\mappers\exemploMapper.ts
type nul > src\infrastructure\repositories\exemploRepositoryImpl.ts
type nul > src\infrastructure\webserver\express\routes\exemploRoute.ts
type nul > src\infrastructure\webserver\middlewares\exemploMiddleware.ts
type nul > src\interfaces\controllers\exemploController.ts
type nul > src\interfaces\presenters\exemploPresenter.ts
type nul > src\index.ts
type nul > tests\exemplo.test.ts

echo Estrutura criada com sucesso!
