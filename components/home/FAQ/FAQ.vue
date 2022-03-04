<template>
	<b-col cols='12'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>FAQ</span>
			</template>
		</BlockHeader>

		<div class='faq pl-xs-2'>
			<div
				class='mt-3 faq__item'
				v-for='(question, index) in questions'
				:key='index'
			>
				<div
					class='d-flex justify-content-between align-items-center'
					:class="[!question.isToggle && 'cursor-pointer']"
					@click='!question.isToggle && toggleQuestion(question)'
				>
					<p>
						{{ question.title }}
					</p>
					<b-img
						src='@/assets/img/close.svg'
						class='faq__item_close cursor-pointer'
						:class="[question.isToggle && 'faq__item_open']"
						@click.stop='toggleQuestion(question)'
					/>
				</div>

				<b-collapse v-model='question.isToggle'>
					<p class='mt-4 faq__description'>{{ question.description }}</p>
				</b-collapse>
			</div>
		</div>
	</b-col>
</template>

<script>
import BlockHeader from '~/components/general/BlockHeader'

export default {
	name: 'FAQ',
	components: {
		BlockHeader
	},
	data: () => ({
		questions: [
			{
				isToggle: true,
				title: "What is 'Ape in for Ukraine'?",
				description:
					'To celebrate the Discord group at 25,000 members, there will be a raffle draw giveaway, of five Strong Apes, to five lucky ' +
					'Discord members. To achieve this milestone, we all need to work together as a cooperative ape civilization to make our Discord and' +
					'Twitter community thrive.' +
					'Join the SAC Discord group today for announcements on the latest SAC development and giveaway packages, lined up for members of the ' +
					'Strong Ape community.'
			},
			{
				isToggle: false,
				title: 'WHAT is NFT?',
				description:
					'To celebrate the Discord group at 25,000 members, there will be a raffle draw giveaway, of five Strong Apes, to five lucky ' +
					'Discord members. To achieve this milestone, we all need to work together as a cooperative ape civilization to make our Discord and' +
					'Twitter community thrive.' +
					'Join the SAC Discord group today for announcements on the latest SAC development and giveaway packages, lined up for members of the ' +
					'Strong Ape community.'
			},
			{
				isToggle: false,
				title: 'Where we well donate?',
				description:
					'We will deposit $50,000 into the SAC fund for ongoing project developments, marketing campaigns, and floor sweeps. The SAC ' +
					'merchandise will also be launched for sales during this phase.'
			},
			{
				isToggle: false,
				title: 'Where we well donate?',
				description:
					'The takeover begins here, in the clash for control and dominance. This is where your status in the SAC community will be ' +
					'decided by you alone, which is why you need every tool you can find to become an alpha ape. It is where you also get the opportunity to ' +
					'win the rarest Strong Apes of the 12 memorable apes, which automatically earn you for a $10,000 cash price. There are only two giveaway ' +
					'spots available for two alpha ape collectors, ' +
					'who already hold a strong ape, to become memorables. If you think you’ve got what it' +
					' takes to be a leader, join our Discord group today.'
			},
			{
				isToggle: false,
				title: 'What about IP and copyright?',
				description:
					'A fundamental theme at SAC is “uniting for strength”, which is why all holders of Strong Ape' +
					' will get the privilege to join our exclusive SAC community. This group is beyond getting ripped for lifting ' +
					'weights, here members help lift each other up to the next level. Each Strong ' +
					'Ape also gets the opportunity to generate its own income when it participates in the ongoing ape wars.'
			},
			{
				isToggle: false,
				title: 'How many can i mint?',
				description:
					'Nothing will stop us, to celebrate this milestone we will be raffling 10 Strong Apes including one Memorable' +
					' Ape among all the Strong Ape holders and we will do daily giveaways for 30 days long with a total value of $100,000!'
			},
			{
				isToggle: false,
				title: 'How cam i contact you?',
				description:
					'Nothing will stop us, to celebrate this milestone we will be raffling 10 Strong Apes including one Memorable' +
					' Ape among all the Strong Ape holders and we will do daily giveaways for 30 days long with a total value of $100,000!'
			}
		]
	}),
	methods: {
		toggleQuestion(item) {
			this.questions.forEach((question) => {
				question.isToggle = question === item ? !question.isToggle : false
			})
		}
	}
}
</script>

<style lang='scss'>
@import "assets/scss/main";

.faq {
	max-width: 1256px;

	&__item {
		padding: 26px 16px;
		border: $dark 1px solid;

		&_open {
			transform: rotate(45deg);
		}

		&_close {
			transition: transform .5s ease-out;
		}
	}

	&__description {
		@include fonts(normal, 400, 1rem, "Neue Machina-300");
		line-height: 1.2rem;
	}
}
</style>
