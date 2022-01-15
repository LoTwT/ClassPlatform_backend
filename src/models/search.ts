import { SearchResult } from "@/models/search"
import db from "../libs/database"
import { maxHotKeywords } from "../config/app"
import { RowDataPacket } from "mysql2"

// 全栈最热门      搜索关键字 => 去重 => 排序 => 前 n 项  离线计算、定时更新
// export async function getHot(): Promise<SearchResult> {
//     let data = (await db.query(
//         `
//         SELECT
//             keyword
//         FROM
//             search_record_table
//         ORDER BY
//             count
//         DESC
//         LIMIT
//             ${maxHotKeywords}
//         `
//     ))[0] as RowDataPacket[]
//     return data.map(row => row.keyword)
// }

// 关键字相关 -- 以 keyword 开头的前 n 个
export async function getSuggest(keyword: string): Promise<SearchResult> {
  let data = (
    await db.query(
      `
        SELECT
            keyword
        FROM
            search_record_table
        WHERE
            keyword LIKE ?
        ORDER BY
            count
        DESC
        LIMIT
            ${maxHotKeywords}
        `,
      [keyword + "%"],
    )
  )[0] as RowDataPacket[]
  return data.map((row) => row.keyword)
}
