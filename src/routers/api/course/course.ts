import Router from "@koa/router"
// import * as modelBanner from '~/models/banner';

const router: Router = new Router()

router.prefix("/course")

router.get("/", async ctx => {
    ctx.body = "course api test"
})

// router.get('/banners', async ctx => {
//     ctx.body = await modelBanner.getAllBanner();
// });

export default router.routes()