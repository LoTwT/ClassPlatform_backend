import Router from "@koa/router"
import Home from "@/views/home"

import React from "react"
import ReactDOMServer from "react-dom/server"

import { staticRoot } from "~/config/app"
import path from "path"
import fs from "fs"

import { getCategory } from "~/models/category"

const router: Router = new Router()

if (process.env.NODE_ENV === "production") {
    const index: string = fs.readFileSync(path.resolve(staticRoot, "index.html")).toString()
    router.get("/", async ctx => {
        let categories = await getCategory()
        let appData = {
            categories
        }

        let str: string = ReactDOMServer.renderToString(<Home appData={appData} />)
        ctx.body = index.replace(
            `<div id="root"></div>`,
            `
            <script>
            window.categories = ${JSON.stringify(categories)}
            </script>
            <div id="root">${str}</div>
            `
        )
    })
} else {
    router.get("/", async ctx => {
        ctx.body = "render disabled"
    })
}


export default router.routes()