<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>COLLECTION</span>
			</template>
		</BlockHeader>
		<div class='collection-item my-4'>
			<CollectionItem v-for='(item, index) in nftList' :key='index' :collection='item' />
		</div>
	</b-col>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
import CollectionItem from '@/components/home/collection/CollectionItem'
export default {
	name: 'Collection',
	components: {
		BlockHeader,
		CollectionItem
	},
	data: () => ({
		nftList: [
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "one"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "two"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "three"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "four"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "five"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "six"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "seven"
			},
			{
				title: "Ukrainian Punk",
				price: "0.105 ETH",
				nft: "eight"
			}
		]
	})
}
</script>

<style scoped lang='scss'>
.collection-item {
	display: grid !important;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr))
}
</style>
