PROJETO BACK-END
================

## Para iniciar o projeto
`npx @aka-demy/create-express-app`
* _Install package...?_: y
* _Name_: back-end
* _Language_: JavaScript
* _Template Engine_: None
* _Package manager_: npm

## Mudando para a pasta do projeto
`cd back-end`

## Atualizando pacotes vulneráveis com atualizações de segurança
`npx audit fix --force`

## Instalando biblioteca Prisma
`npm install prisma --save-dev`

## Inicializando Prisma com conector para MongoDB
`npx prisma init --datasource-provider mongodb`