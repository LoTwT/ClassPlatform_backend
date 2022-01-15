import Koa from "koa"

export function init(app: Koa) {
  app.use(async (ctx, next) => {
    // CORS -> Cross-Origin-Resource-Share
    ctx.set("Access-Control-Allow-Origin", "*")
    ctx.set("Access-Control-Allow-Methods", "*")
    ctx.set("Access-Control-Allow-Headers", "*")

    if (ctx.method === "OPTIONS") {
      ctx.body = "ok"
    } else {
      await next()
    }
  })
}
