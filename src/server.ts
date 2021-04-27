import app from "./libs/server"
import router from "./routers/routers"

import koaStatic from "koa-static"
import { staticRoot, enableCors } from "~/config/app"

import { init as corsInit } from "~/libs/cors"

// cors
if (enableCors) corsInit(app)

app.use(router)
app.use(koaStatic(staticRoot))

import { getSuggest } from "./models/search"
getSuggest("js").then(res => {
    console.log(res)
})