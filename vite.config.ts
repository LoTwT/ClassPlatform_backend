import { defineConfig, loadEnv } from "vite"
import react from "@vitejs/plugin-react"
import { VitePluginNode } from "vite-plugin-node"
import path from "path"

export default defineConfig((config) => {
  const { mode } = config

  // .env
  const root = process.cwd()
  const { VITE_SERVER_PORT } = loadEnv(mode, root) as unknown as ImportMetaEnv

  return {
    resolve: {
      alias: {
        // web 下的 src...
        "@": path.resolve(__dirname, "../web/src"),
      },
    },
    optimizeDeps: {
      include: [],
    },
    server: {
      port: VITE_SERVER_PORT || 3000,
    },
    plugins: [
      react(),
      ...VitePluginNode({
        adapter: "koa",
        appPath: "./src/server.tsx",
      }),
    ],
  }
})

// 环境变量
// https://cn.vitejs.dev/guide/env-and-mode.html#intellisense
interface ImportMetaEnv {
  readonly VITE_SERVER_PORT: number
}
