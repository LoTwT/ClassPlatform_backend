import { CategoryData } from "@/models/category"
import db from "~/libs/database"
import { get, set, KEY_APP_CATEGORY_CACHE } from "~/libs/redis"
import { enableCache } from "~/config/app"

export async function getCategory(): Promise<CategoryData[]> {
    // 1. 找 redis 要缓存
    if (enableCache) {
        let str = await get(KEY_APP_CATEGORY_CACHE)
        if (str) {
            try {
                return JSON.parse(str)
            } catch (e) { }
        }
    }

    // 2. 没有缓存, 请求数据库
    let categories: any[] = (await db.query("SELECT * FROM category_table"))[0] as any[]
    let items: any[] = (await db.query("SELECT * FROM category_item_table ORDER BY sort"))[0] as any[]

    // 组装数据
    let result: CategoryData[] = []

    categories.forEach(data => {
        const { parent_id } = data
        delete data.parent_id

        if (parent_id === 0) {
            result.push(data)
        } else {
            // 找到 parent_id 对应的数据
            let parent = categories.find(data => data.ID === parent_id)
            // 添加到 children 中
            if (parent) {
                parent.children = parent.children || []
                parent.children.push(data)
            }

        }
    })

    items.forEach(item => {
        let parent = categories.find(data => data.ID === item.category_id)

        if (parent) {
            parent.items = parent.items || []
            parent.items.push(item)

            delete item.category_id
            delete item.sort
        }
    })

    // 写入缓存
    if (enableCache) {
        await set(KEY_APP_CATEGORY_CACHE, JSON.stringify(result))
    }

    return result
}