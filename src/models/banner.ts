import db from '../libs/database';

export interface BannerData {
    ID: number;
    img: string;
    href: string;
    sort: number;
}

export async function getAllBanner(): Promise<BannerData[]> {
    // let res = await db.query('SELECT * FROM banner_table');
    // let rows = res[0] as BannerData[];

    // todo 
    let rows: Array<BannerData> = [{
        ID: 1,
        img: "1.png",
        href: "href",
        sort: 1,
    }]
    return rows;
}