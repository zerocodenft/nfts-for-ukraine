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
import { dataSource } from '@/data-source/dataSource'
export default {
	name: 'Collection',
	components: {
		BlockHeader,
		CollectionItem
	},
	data: () => ({
		nftList: dataSource
	})
}
</script>

<style scoped lang='scss'>
.collection-item {
	display: grid !important;
	grid-template-columns: repeat(auto-fit, minmax(300px, 1fr))
}
</style>
