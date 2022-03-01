<template>
	<div>
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>COLLECTION</span>
			</template>
		</BlockHeader>
		<CollectionItem />
	</div>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
import CollectionItem from '@/components/home/collection/CollectionItem'
export default {
	name: 'Collection',
	components: {
		BlockHeader,
		CollectionItem
	}
}
</script>

<style lang="scss" scoped>

</style>
