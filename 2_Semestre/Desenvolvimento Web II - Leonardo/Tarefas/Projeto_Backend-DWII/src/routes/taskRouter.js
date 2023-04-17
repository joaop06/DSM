const express = require('express')
const router = express.Router()
const taskController = require("../controllers/taskController")
this.taskController = new taskController()

router.get('/tasks', this.taskController.findAll);
router.get('/tasks/:id', this.taskController.findByID);
router.post('/tasks', this.taskController.create);
router.put('/tasks/:id', this.taskController.update);
router.delete('/tasks/:id', this.taskController.delete);

module.exports = router;