import prisma from '../database/client'

const controller = {}

controller.create = async (req, res) => {
    try {
        await prisma.curso.create({ data: req.body })
        res.status(201).end()

    } catch (error) {
        console.log(error)
        res.status(500).send()
    }
}

export default controller