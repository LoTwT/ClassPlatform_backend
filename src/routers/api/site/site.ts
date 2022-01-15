import Router from "@koa/router"
import * as modelCategory from "~/models/category"
import * as modelSearch from "~/models/search"
import * as modelBanner from "~/models/banner"

const router: Router = new Router()

router.prefix("/site")
router.get("/categories", async (ctx) => {
  ctx.body = await modelCategory.getCategory()
})

router.get("/hot-keywords", async (ctx) => {
  ctx.body = await modelSearch.getSuggest("")
})

router.get("/suggest/:keyword", async (ctx) => {
  const { keyword } = ctx.params
  ctx.body = await modelSearch.getSuggest(keyword)
})

router.get("/banners", async (ctx) => {
  ctx.body = await modelBanner.getAllBanner()
})

export default router.routes()
