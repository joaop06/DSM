import express, { json, urlencoded } from "express"
import cookieParser from "cookie-parser"
import logger from "morgan"

import indexRouter from "./routes/index.js"
import usersRouter from "./routes/users.js"

const app = express()

app.use(logger("dev"))
app.use(json())
app.use(urlencoded({ extended: false }))
app.use(cookieParser())

app.use("/", indexRouter)
app.use("/users", usersRouter)


// Rota para Cursos
import cursoRoute from './routes/curso.js'
app.use('/curso', cursoRoute)

// Rota para Professores
import professorRoute from './routes/professor.js'
app.use('/professor', professorRoute)


export default app
