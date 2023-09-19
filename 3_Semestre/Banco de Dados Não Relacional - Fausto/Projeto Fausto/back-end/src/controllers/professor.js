import prisma from '../database/client.js'

const controller = {}   // Objeto vazio

controller.create = async (req, res) => {
    try {
        await prisma.professor.create({ data: req.body })

        // HTTP 201: Created
        res.status(201).end()
    }
    catch (error) {
        console.error(error)
        res.status(500).send(error)
    }
}

controller.retrieveAll = async (req, res) => {
    try {
        // Manda buscar os dados no servidor
        // Traz ordenado por nome, depois por nivel
        const result = await prisma.professor.findMany({})

        res.send(result)
    }
    catch (error) {
        console.error(error)
        res.status(500).send(error)
    }
}

controller.retrieveOne = async (req, res) => {
    try {
        const result = await prisma.professor.findUnique({ where: { id: req.params.id } })

        if (result) res.send(result)
        else res.status(404).end()
    }
    catch (error) {
        console.error(error)
        res.status(500).send(error)
    }
}

controller.update = async (req, res) => {
    try {
        const result = await prisma.professor.update({
            where: { id: req.params.id },
            data: req.body
        })

        if (result) res.status(204).end()
        else res.status(404).end()
    }
    catch (error) {
        console.error(error)
        res.status(500).send(error)
    }
}

controller.delete = async (req, res) => {
    try {
        const result = await prisma.professor.delete({ where: { id: req.params.id } })

        if (result) res.status(204).end()
        else res.status(404).end()
    }
    catch (error) {
        console.error(error)
        res.status(500).send(error)
    }
}

export default controller