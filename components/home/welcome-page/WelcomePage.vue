<template>
	<div id='welcome-page'
			 class='welcome-page d-flex flex-md-row flex-column-reverse w-100 align-items-center justify-content-around'>
		<div class='welcome-page__text d-flex flex-column'>
			<div class='welcome-page__text--title'>
				Ape in to Support Ukraine.<br />
				Get your NFT.
			</div>
			<div class='welcome-page__text--sub-title text-md-left'>
				<p class='mb-5 mr-md-5 mr-0'>Support Ukraine by minting a limited edition NFT. We've reimagined some favorite NFT collections to honor the people of Ukraine. For each edition, holders generously let us reimagine the artwork of their NFTs to create a unique token for your support.
				</p>
				<p class='mt-3 mr-md-5 mr-0'>
					‘Ape in for Ukraine’ provides funds to help those fighting against the invasion of their country displacement of their people. Join people around the world in using the power of cryptocurrency to undermine Putin’s full-scale destruction.
				</p>
			</div>
			<div
				class='welcome-page__actions d-flex justify-content-md-start justify-content-between flex-column flex-sm-row'>
				<b-button class='brand-button' size='lg' variant='dark' @click="mintNFTs">MINT NOW</b-button>
			</div>
		</div>
		<div>
			<img class='welcome-page__image' :src='require("@/assets/img/card-group.svg")' alt='welcome-cards' />
		</div>
	</div>
</template>

<script>
export default {
	name: 'WelcomePage',
	methods: {
		mintNFTs() {
			document.getElementById("collectionItems").scrollIntoView()
		}
	}
}
</script>

<style scoped lang='scss'>
@import '@/assets/scss/mixins';

.welcome-page {
	gap: 1.75rem;
	padding-bottom: 6rem;

	&__image {
		@media(max-width: 600px) {
			width: 250px;
		}
	}

	&__text {
		&--title {
			@include fonts(normal, 800, 3.438rem, 'Neue Machina-800');
			@media(max-width: 600px) {
				font-size: clamp(1rem, 10vw, 2rem);
				text-align: center;
			}
		}

		&--sub-title {
			margin: 2.5rem 0;
			@include fonts(normal, 400, 1.25rem, 'Neue Machina-300');
			@media(max-width: 600px) {
				text-align: center;
			}
		}
	}

	&__actions {
		gap: 2rem;
		@include fonts(normal, 800, 1rem, 'Neue Machina-800');
		@media(max-width: 600px) {
			gap: 1rem;
			button {
				height: 60px;
			}
		}
	}
}
</style>
