import Router from "@koa/router"

import userRouter from "./user/user"
import courseRouter from "./course/course"
import siteRouter from "./site/site"

const router: Router = new Router()

router.prefix("/api")

router.use(userRouter)
router.use(courseRouter)
router.use(siteRouter)

export default router.routes()