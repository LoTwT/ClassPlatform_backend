import Koa from "koa"
import Router from "@koa/router"

import ReactDomServer from "react-dom/server"

import App from "@/App"

const app = new Koa()
const router = new Router()

router.get("/", async (ctx) => {
  ctx.body = ReactDomServer.renderToString(<App />)
})

app.use(router.routes())

export const viteNodeApp = app
