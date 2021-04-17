import app from "./libs/server"
import App from "@/App"

import React from "react"
import ReactDOMServer from "react-dom/server"

import Router from "@koa/router"
import koaStatic from "koa-static"

import fs from "fs"
const index = fs.readFileSync("index.html").toString()

const router = new Router()

router.get("/", async ctx => {
    ctx.body = index.replace(`<div id="root"></div>`, `<div id="root">${ReactDOMServer.renderToString(<App />)}</div>`)
})

app.use(router.routes())
app.use(koaStatic(__dirname))