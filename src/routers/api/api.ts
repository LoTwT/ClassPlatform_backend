import Router from "@koa/router"

import userRouter from "./user/user"
import courseRouter from "./course/course"

const router: Router = new Router()

router.prefix("/api")

router.use(userRouter)
router.use(courseRouter)

export default router.routes()