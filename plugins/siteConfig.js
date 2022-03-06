import siteConfigLocal from '@/siteConfig.json'

export default async ({},inject) => {

    const siteConfig = siteConfigLocal

    inject('siteConfig', siteConfig)
}
