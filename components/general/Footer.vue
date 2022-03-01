<template>
	<footer class='nft-container footer my-5 w-100'>
		<div class='footer__border d-flex justify-content-between align-items-center'>
			Copyright 2022 NFT UA. Made with love by ukrainians in USA.
			Terms & Conditions
			<div class='footer__actions d-flex align-items-center'>
				<div>
					<img :src='require("@/assets/img/footer/instagram.svg")' alt='instagram'>
				</div>
				<div>
					<img :src='require("@/assets/img/footer/discord.svg")' alt='discord'>
				</div>
				<a class='footer__actions--link'>Terms & Conditions</a>
			</div>
		</div>
	</footer>
</template>

<script>
export default {
	name: 'Footer',
	data: () => ({})
}
</script>

<style lang='scss' scoped>
@import '@/assets/scss/mixins';

.footer {

	@include fonts(normal, 400, 1rem, 'Neue Machina-normal');

	&__border {
		padding: 2.5rem 0 2rem;
		border-top: 2px solid black;
	}

	&__actions {
		gap: 1.5rem;
		&--link{
			text-decoration: underline;
			color: inherit;
		}
	}
}
</style>
