<template>
	<footer class='nft-container footer w-100 mt-5 pt-3 pt-lg-5'>
		<div class='footer__border d-flex flex-column flex-lg-row justify-content-between align-items-center'>
			<span class="order-1 order-lg-0 text-center">Copyright 2022. Made with ❤ by ukrainians for ukrainians.</span>
			<div class='footer__actions d-flex align-items-center order-0 order-lg-1 mb-4 mb-lg-0'>
				<div>
					<img class='cursor-pointer' :src='require("@/assets/img/footer/instagram.svg")' alt='instagram'>
				</div>
				<div>
					<img class='cursor-pointer' :src='require("@/assets/img/footer/discord.svg")' alt='discord'>
				</div>
				<a @click='openToS' class='footer__actions--link cursor-pointer'>Terms & Conditions</a>
			</div>
		</div>
		<TermsAndCondition />
	</footer>
</template>

<script>
import TermsAndCondition from '../../pages/terms-and-conditions'
export default {
	name: 'Footer',
	components: { TermsAndCondition },
	data: () => ({}),
	methods: {
		openToS() {
			this.$bvModal.show('bv-modal-example')
		}
	}
}
</script>

<style lang='scss' scoped>
@import 'assets/scss/main';

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
