const tasksList = require("../../tasksList.json")

module.exports = class ScoreController{
    async findAll(req, res){    // Busca todas as tarefas
        res.status(200).json({
            massage: 'Sucesso!',
            data: {
                tasksList
            }
        })
    }

    async findByID(req, res){    // Busca de tarefa por ID
        const task = tasksList.find(item => item.id == req.params.id);
        if (task){
            res.status(200).json({
                massage: 'Sucesso!',
                data: {...task}
            })
        } else{
            res.status(400).json({
                massage: 'Tarefa não encontrada.'
            })
        }
    }

    async create(req, res){
        const { title, description, completed} = req.body;

        if (!title){
            return res.status(400).json({
                massage: 'Adicione um título!'
            })
        }

        tasksList.push({
            id: tasksList.length + 1,
            title: title,
            description: description,
            completed: completed
        });
        res.status(200).json({
            status: 'Sucesso!',
            data: tasksList
        })
    }

    async update(req, res){
        const {id} = req.params;
        const {title, description, completed} = req.body;

        if (!id){
            return res.status(400).json({
                massage: 'Id é obrigatório!'
            })
        }

        const task = tasksList.find(item => item.id == req.params.id);
        task.title = title;
        task.description = description;
        task.completed = completed;

        res.status(200).json({
            massage: 'Sucesso',
            data: task,
        })
    }
    async delete(req, res){
        const {id} = req.params;
        
        if (!id){
            return res.status(400).json({
                massage: 'Id é obrigatório!'
            })
        }

        let index = tasksList.findIndex(item => item.id == req.params.id);
        tasksList.splice(index, 1);

        res.status(200).json({
            massage: "Sucesso!",
            data: tasksList
        })

    }
}