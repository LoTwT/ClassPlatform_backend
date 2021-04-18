import Router from "@koa/router"
import App from "@/App"

import React from "react"
import ReactDOMServer from "react-dom/server"

import { staticRoot } from "~/config/app"
import path from "path"
import fs from "fs"

const router: Router = new Router()

if (process.env.NODE_ENV === "production") {
    const index: string = fs.readFileSync(path.resolve(staticRoot, "index.html")).toString()
    router.get("/", async ctx => {
        let str: string = ReactDOMServer.renderToString(<App />)
        ctx.body = index.replace(`<div id="root"></div>`, `<div id="root">${str}</div>`)
    })
} else {
    router.get("/", async ctx => {
        ctx.body = "render disabled"
    })
}


export default router.routes()