<template>
	<div class='team w-100 d-flex flex-column'>
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>OUR TEAM</span>
			</template>
		</BlockHeader>
		<div class='team__list'>
			<Member v-for='i in 5' :key='i'/>
		</div>
	</div>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
import Member from './Member'

export default {
	name: 'Team',
	components: {
		Member,
		BlockHeader
	}
}
</script>

<style scoped lang='scss'>
.team {
	gap: 3rem;
	&__list{
		display: grid;
		grid-template-columns: repeat(5, 1fr);
		gap: 3.5rem;
	}
}
</style>
