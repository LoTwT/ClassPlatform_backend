import Router from "@koa/router"

const router: Router = new Router()

router.prefix("/user")

router.get("/", async (ctx) => {
  ctx.body = "user api test"
})

export default router.routes()
