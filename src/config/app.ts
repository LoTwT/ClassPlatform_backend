import path from "path"
export const staticRoot: string = path.resolve(__dirname, "../build/")
export const serverPort: number = 8080

export const enableCors = true

export const enableCache = false