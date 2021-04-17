import redis from "redis"
import {promisify} from "util"

import redisConf from "../../config/redis"

let client: redis.RedisClient = redis.createClient(redisConf)

export const get = promisify(client.get).bind(client)
export const set = promisify(client.set).bind(client)