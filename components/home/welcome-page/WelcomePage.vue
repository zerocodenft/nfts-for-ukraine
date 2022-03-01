<template>
	<div id="welcome-page" class='welcome-page d-flex flex-md-row flex-column-reverse w-100 align-items-center justify-content-around'>
		<div class='welcome-page__text d-flex flex-column'>
			<div class='welcome-page__text--title'>
				Stop russian aggressor.<br />
				Get your NFT.
			</div>
			<div class='welcome-page__text--sub-title'>Unique NFT collection made for Ukraine by Ukrainians</div>
			<div class='welcome-page__actions d-flex justify-content-md-start justify-content-between flex-column flex-sm-row'>
				<b-button class='brand-button' size='lg' variant='dark'>Buy NFT</b-button>
				<b-button class='brand-button--outlined' size='lg' variant='outline-dark'>Partner with Us</b-button>
			</div>
		</div>
		<div>
			<img class='welcome-page__image' :src='require("@/assets/img/card.svg")' alt='welcome-cards' />
		</div>
	</div>
</template>

<script>
export default {
	name: 'WelcomePage'
}
</script>

<style scoped lang='scss'>
@import '@/assets/scss/mixins';

.welcome-page {
	gap: 1.75rem;
	padding-bottom: 6rem;
	&__image{
		@media(max-width: 600px){
			width: 200px;
		}
	}
	&__text {
		&--title {
			@include fonts(normal, 800, 4rem, 'Neue Machina-800');
			text-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
			@media(max-width: 600px){
				font-size: clamp(1rem, 10vw, 2rem);
				text-align: center;
			}
		}

		&--sub-title {
			margin: 2.5rem 0;
			filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
			@include fonts(normal, 400, 1.25rem, 'Neue Machina-normal');
		}
	}
	&__actions {
		gap: 2rem;
		@include fonts(normal, 800, 1rem, 'Neue Machina-800');
		@media(max-width: 600px){
			gap: 1rem;
			button {
				height: 60px;
			}
		}
	}
}
</style>
