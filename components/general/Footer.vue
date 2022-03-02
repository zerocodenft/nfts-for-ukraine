<template>
	<footer class='nft-container footer mt-5 w-100'>
		<div class='footer__border d-flex flex-column flex-lg-row justify-content-between align-items-center'>
			<span class="order-1 order-lg-0 text-center">Copyright 2022 NFT UA. Made with love by ukrainians in USA. Terms & Conditions</span>
			<div class='footer__actions d-flex align-items-center order-0 order-lg-1 mb-4 mb-lg-0'>
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
@import 'assets/scss/main';

.footer {
	margin-top: 10rem !important;
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
