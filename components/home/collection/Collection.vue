<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>COLLECTION</span>
			</template>
		</BlockHeader>
	</b-col>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
export default {
	name: 'Collection',
	components: {
		BlockHeader
	}
}
</script>

<style scoped>

</style>
