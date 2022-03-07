<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>COLLECTION</span>
			</template>
		</BlockHeader>
		<p>Mint up to 10 from each limited edition series.</p>
		<div id="collectionItems" class='collection-item my-4'>
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
				slug: 'remarkable_ukrainian',
				title: "Remarkable Ukrainian",
				description: `Derived from Remarkable </br>Women #202 </br>Limited edition of 1000`,
				price: "0.015 ETH",
				nft: "main",
			},
			{
				slug: 'world_of_ukrainian_women',
				title: "World of Ukrainian Women",
				description: `Derived from World of </br>Women #4865 </br>Limited edition of 1000`,
				price: "0.03 ETH",
				nft: "main"
			},
			{
				slug: 'zelensky_punk',
				title: "Zelensky Punk",
				description: `Derived from CryptoPunk </br>#7743 </br>Limited edition of 300`,
				price: "0.06 ETH",
				nft: "main"
			},
			{
				slug: 'coming_soon',
				title: "Coming soon",
				description: "",
				price: "",
				nft: "coming-soon",
				placeholder: true
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
