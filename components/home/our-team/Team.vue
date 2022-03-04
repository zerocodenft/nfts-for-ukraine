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
					about: 'Software_Engineer </br>Ivano_Frankivsk, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'Mykhailo',
					lastName: 'Last',
					about: 'Software_Engineer </br>Unknown_City, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'Serge',
					lastName: 'Last',
					about: 'Product_Designer </br>Lutsk, Ukraine',
					social: 'linkedIn',
					rotate: '8.67'
				},
				{
					firstName: 'Anna',
					lastName: 'Last',
					about: 'Product_Designer </br>Lutsk, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'Sarah',
					lastName: 'Last',
					about: 'Strategy </br>Miami, USA',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'William',
					lastName: 'Last',
					about: 'Software_Engineer </br>Ivano_Frankivsk, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'N/A',
					lastName: 'Last',
					about: 'Software_Engineer </br>Ivano_Frankivsk, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'N/A',
					lastName: 'Last',
					about: 'Product_Designer </br>Lutsk, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'N/A',
					lastName: 'Last',
					about: 'Digital_Marketing </br>Unknown_City, Ukraine',
					social: 'twitter',
					rotate: '8.67'
				},
				{
					firstName: 'N/A',
					lastName: 'Last',
					about: 'Strategy </br>Miami, USA',
					social: 'twitter',
					rotate: '8.67'
				},
			]
		}
	}
}
</script>

<style scoped lang='scss'>
.team {
	gap: 3rem;
	margin-top: 5rem;
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
