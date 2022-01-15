import Router from "@koa/router"
import Home from "@/views/home"

import React from "react"
import ReactDOMServer from "react-dom/server"

import { staticRoot } from "~/config/app"
import path from "path"
import fs from "fs"

import { getCategory } from "~/models/category"
import { getSuggest } from "~/models/search"
import { getAllBanner } from "~/models/banner"

import { AppData } from "@/models/app"

const router: Router = new Router()

if (process.env.NODE_ENV === "production") {
  const index: string = fs
    .readFileSync(path.resolve(staticRoot, "index.html"))
    .toString()
  router.get("/", async (ctx) => {
    let categories = await getCategory()
    let hotKeywords = await getSuggest("")
    let banners = await getAllBanner()
    let appData: AppData = {
      categories,
      hotKeywords,
      banners,
    }

    let str: string = ReactDOMServer.renderToString(<Home appData={appData} />)
    ctx.body = index.replace(
      `<div id="root"></div>`,
      `
            <script>
            window.appData = ${JSON.stringify(appData)}
            </script>
            <div id="root">${str}</div>
            `,
    )
  })
} else {
  router.get("/", async (ctx) => {
    ctx.body = "render disabled"
  })
}

export default router.routes()
