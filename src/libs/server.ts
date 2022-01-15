import Koa from "koa"

import { serverPort } from "~/config/app"

const app: Koa = new Koa()

app.listen(serverPort, () => {
  console.log(`server is running at http://localhost:${serverPort}`)
})

export default app
