<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>COLLECTION</span>
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
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "one"
			},
			{
				title: "World of Ukrainian Women",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "two"
			},
			{
				title: "Zelensky Punk",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "three"
			},
			{
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "four"
			},
			{
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "five"
			},
			{
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "six"
			},
			{
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
				price: "0.105 ETH",
				nft: "seven"
			},
			{
				title: "Remarkable Ukraine",
				description: `Derive form Remarkable </br>Women #202 </br>Limited edition of 2000`,
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
