import { Router } from 'express'
import controller from '../controller/curso'

const router = new Router()

router.post('/curso', controller.create)

export default router