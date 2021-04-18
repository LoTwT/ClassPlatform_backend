import mysql from "mysql2/promise";
import { db } from "~/config/database"

export default mysql.createPool(db);