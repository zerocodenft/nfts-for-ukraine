<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>COLLECTION</span>
			</template>
		</BlockHeader>
		<CollectionItem />
	</b-col>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
import CollectionItem from './CollectionItem'
export default {
	name: 'Collection',
	components: {
		BlockHeader,
		CollectionItem
	}
}
</script>

<style scoped>

</style>
