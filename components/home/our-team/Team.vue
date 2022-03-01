<template>
	<div class='team w-100 d-flex flex-column'>
		<BlockHeader>
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>OUR TEAM</span>
			</template>
		</BlockHeader>
		<div class='team__list'>
			<Member v-for='(member, index) in listMembers' :key='index' :member='member' />
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
	},
	data(){
		return{
			listMembers: [
				{
					firstName: 'First',
					lastName: 'Last',
					about: 'Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc',
					rotate: '8.67'
				},
				{
					firstName: 'First',
					lastName: 'Last',
					about: 'Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc',
					rotate: '-1'
				},
				{
					firstName: 'First',
					lastName: 'Last',
					about: 'Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc',
					rotate: '-7'
				},
				{
					firstName: 'First',
					lastName: 'Last',
					about: 'Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc',
					rotate: '8.5'
				},
				{
					firstName: 'First',
					lastName: 'Last',
					about: 'Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc Lorem ipsum saran tiopasc',
					rotate: '-2.2'
				}
			]
		}
	}
}
</script>

<style scoped lang='scss'>
.team {
	gap: 3rem;
	margin-top: 5.6rem;
	&__list{
		display: grid;
		grid-template-columns: repeat(5, 1fr);
		gap: 3.5rem;
		@media(max-width: 879px){
			grid-template-columns: repeat(3, 1fr);
		}
		@media(max-width: 600px){
			grid-template-columns: 1fr
		}
	}
}
</style>
