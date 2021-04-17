import Koa from "koa"

const app = new Koa()

app.listen(8080, () => {
    console.log("server is running at http://localhost:8080")
})

export default app