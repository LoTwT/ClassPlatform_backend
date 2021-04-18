import Router from "@koa/router"

import ApiRouter from "./api/api"
import RenderRouter from "./render/render"

const router: Router = new Router()

router.use(ApiRouter)
router.use(RenderRouter)

export default router.routes()