import mysql from "mysql2/promise"
import { db } from "~/config/database"

// 创建长连接池 (链式调用, 共享 await)
export default mysql.createPool(db)
