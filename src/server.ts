import app from "./libs/server"
import router from "./routers/routers"

import koaStatic from "koa-static"
import { staticRoot } from "~/config/app"

app.use(router)
app.use(koaStatic(staticRoot))