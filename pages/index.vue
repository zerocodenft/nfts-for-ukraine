<template>
	<b-container class='nft-container pt-5' fluid>
		<b-row class='m-auto mt-5 pt-5'>
			<WelcomePage />
			<Collection />
			1111
		</b-row>
	</b-container>
</template>

<script>
console.group('Powered by www.zerocodenft.com')
console.info(
	'%cDrop Your NFT collection with ZERO coding skills!',
	`background: linear-gradient(100.07deg, #DB6F3D -28.71%, #9534DE 36.75%, #5FB9E6 103.59%);
  color:white;
  font-weight:bold;`
)
console.groupEnd()

import Collection from '@/components/home/collection/Collection'
import MintMixin from '@/mixins/mint'
import WelcomePage from '@/components/general/WelcomePage'

export default {
	mixins: [MintMixin],
	components: {
		Collection,
		WelcomePage,
	},
	data() {
		return {
			count: 1,
			mintedCount: 0,
			collectionSize: 0
		}
	},

	// mounted() {
	// 	const {
	// 		chainId: targetChainId,
	// 		abi,
	// 		address,
	// 		collectionSize
	// 	} = this.$siteConfig.smartContract
	//
	// 	this.collectionSize = collectionSize
	//
	// 	try {
	// 		// give some time for wallet plugin to init
	// 		setTimeout(async () => {
	// 			if (this.showCountdown || !this.$wallet.provider) return
	//
	// 			if (this.$wallet.chainId !== +targetChainId) {
	// 				await this.$wallet.switchNetwork(targetChainId)
	// 			}
	//
	// 			const nftContract = new ethers.Contract(address, abi, this.$wallet.provider)
	// 			this.mintedCount = +(await nftContract.totalSupply())
	// 			this.collectionSize = +(await nftContract.COLLECTION_SIZE())
	// 		}, 2000)
	// 	} catch (err) {
	// 		console.error({ err })
	// 	}
	// },
	methods: {
		onMinted(val) {
			this.mintedCount = val
		}
	}
}
</script>

<style lang='scss' scoped>

</style>
