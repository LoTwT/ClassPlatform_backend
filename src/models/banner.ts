import db from '../libs/database';
import { BannerData } from "@/models/banner"

export async function getAllBanner(): Promise<BannerData[]> {
    return (await db.query('SELECT ID,img,href,color FROM banner_table ORDER BY sort ASC'))[0] as BannerData[];
}