<template>
	<b-col cols="12" class='team'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>OUR TEAM</span>
			</template>
		</BlockHeader>
		<div class='team__list'>
			<Member v-for='(member, index) in listMembers' :key='index' :member='member' />
		</div>
	</b-col>
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
					firstName: 'Ihor',
					lastName: 'Last',
					about: 'Smart_contract & Web3 </br> Ivano_Frankivsk, </br> Ukraine',
					social: 'linkedIn',
					url: 'https://linkedin.com/in/ibodnarchuk/',
					rotate: '0',
					photo: require('@/assets/img/home/team/Ihor1.png')
				},
				{
					firstName: 'Mykhailo',
					lastName: 'Last',
					about: 'Software_engineer </br>Lviv, </br> Ukraine',
					social: 'linkedIn',
					url: 'https://linkedin.com/in/mykhailo-diakovych/',
					rotate: '0',
					photo: require('@/assets/img/home/team/Mikhailo.png')
				},
				{
					firstName: 'Serge',
					lastName: 'Last',
					about: 'Product_Designer </br>Lutsk, </br> Ukraine',
					social: 'linkedIn',
					url: 'https://linkedin.com/in/skhaiba/',
					rotate: '0',
					photo: require('@/assets/img/home/team/Serge.png')
				},
				{
					firstName: 'Anna',
					lastName: 'Last',
					about: 'Marketing </br>Odessa, </br> Ukraine',
					social: 'twitter',
					url: 'https://twitter.com/anna_gandrabura',
					rotate: '0',
					photo: require('@/assets/img/home/team/Anna.png')
				},
				{
					firstName: 'Igor',
					lastName: 'Last',
					about: 'Graphic_designer </br>Uknown_city, </br> Ukraine',
					social: 'linkedIn',
					url: '#',
					rotate: '0',
					photo: require('@/assets/img/home/team/Ihor.png')
				},
				{
					firstName: 'Sarah',
					lastName: 'Last',
					about: 'Strategy </br>Miami, </br> USA',
					social: 'linkedIn',
					url: 'https://linkedin.com/in/sarahnohe/',
					rotate: '0',
					photo: require('@/assets/img/home/team/Sarah.png')
				},
				{
					firstName: 'quasi Digi',
					lastName: 'Last',
					about: 'Artist </br>Unknown_city, </br> Country',
					social: 'twitter',
					url: 'https://twitter.com/quasidigi',
					rotate: '0',
					photo: require('@/assets/img/home/team/QuasiDigi.png')
				},
				{
					firstName: 'William',
					lastName: 'Last',
					about: 'Communications </br>New York, </br> USA',
					social: 'linkedIn',
					url: 'https://linkedin.com/in/bywilliamfreedman/',
					rotate: '0',
					photo: require('@/assets/img/home/team/William.png')
				},
			]
		}
	}
}
</script>

<style scoped lang='scss'>
.team {
	gap: 3rem;
	@media(min-width: 769px) {
		margin-top: 5rem;
	}

	&__list{
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		gap: 3.5rem;
		@media(max-width: 879px){
			grid-template-columns: repeat(3, 1fr);
		}
		@media(max-width: 600px){
			gap: 3.5rem 1.5rem;
			grid-template-columns: 1fr 1fr;
		}
	}
}
</style>
