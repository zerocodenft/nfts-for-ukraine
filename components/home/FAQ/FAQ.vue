<template>
	<b-col cols='12'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>FAQ's</span>
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
					`Ape in for Ukraine is a series of limited edition NFTs and a token representing your donation to Ukraine. The NFTs are based off of well-known collections. We worked with holders to reimagine their NFTs for this cause.+`
			},
			{
				isToggle: false,
				title: 'What is an NFT?',
				description:
					`NFTs represent unique assets. They are non-fungible because each NFT’s value is based on its unique properties and features. When an NFT is created (or “minted”) and then sold, the purchaser owns that NFT and can sell it as they would any other item they own.`
			},
			{
				isToggle: false,
				title: 'Where will funds be donated?',
				description:
					`The contract has been written so funds go directly to the Ukraine digital wallet [ETH and USDT (ERC-20) - 0x165CD37b4C644C2921454429E7F9358d18A45e14]. We determined that donating to Ukraine directly is the best way we can help in the immediate defense against the Russian invasion, while leaving it to Ukraine to allocate funds to help rebuild the country and support displaced civilians long-term. Any changes for upcoming collections, such as directing funds to a vetted humanitarian organization, will be made clear and funds will continue to be trackable. `
			},
			{
				isToggle: false,
				title: 'What about IP and copyright?',
				description:
					`We are working with collections that give holders the intellectual property rights in the underlying asset. The holders of each NFT we used to create derivatives generously granted us the permission to do so.`
			},
			{
				isToggle: false,
				title: 'How many can I mint?',
				description:
					`You can mint up to 10 NFTs from each series. Note that collections are not randomly generated and unique like some collections, but rather 1/1000 limited edition series.`
			},
			{
				isToggle: false,
				title: 'How can I contact you?',
				description:
					`We’re reachable through Twitter messages. DM us @ApeinforUkraine. If you have a blue chip NFT you’d like to ‘donate’ for reimagination or you’re interested in partnering with us, for this project or something else, you can also use the form on this site.`
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
