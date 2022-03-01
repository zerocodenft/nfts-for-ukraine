<template>
	<div class="pt-4 d-flex flex-column flex-md-row align-items-center justify-content-between justify-content-md-between overflow-hidden position-relative">
		<b-navbar class="header p-0 pb-4 z-index-1 m-0 w-100 d-flex align-items-center" toggleable="lg" type="dark" variant="">
			<b-navbar-brand to="/preview">
				<div class="header__brand mr-xl-5">
					NFT UA
				</div>
			</b-navbar-brand>
			<b-navbar-toggle target="nav-collapse" class='order-2'></b-navbar-toggle>
			<b-collapse id="nav-collapse" class="order-md-1 order-2 justify-content-between align-items-center" is-nav>
				<b-navbar-nav class=" d-flex justify-content-center align-items-center">
					<b-nav-item class="header__link shadow-none text-nowrap" to="/#home">Collection</b-nav-item>
					<b-nav-item class="header__link shadow-none text-nowrap" to="/#about-project">Our mission</b-nav-item>
					<b-nav-item class="header__link shadow-none text-nowrap" to="/#where-buy">Our team</b-nav-item>
					<b-nav-item class="header__link shadow-none text-nowrap" to="/#road-map">Roadmap </b-nav-item>
					<b-nav-item class="header__link shadow-none text-nowrap" to="/#our-team">FAQ</b-nav-item>
				</b-navbar-nav>
				<div class="d-flex justify-content-center z-index-1 order-1">
					<b-button class="brand-button d-flex align-items-center justify-content-center">Partner with us</b-button>
				</div>
			</b-collapse>
		</b-navbar>
	</div>
</template>

<script>
import {BCollapse, BLink, BNavbar, BNavbarBrand, BNavItem} from "bootstrap-vue";

export default {
	methods: {
		async onWalletConnect() {
			try {
				await this.$wallet.connect()
			} catch (err) {
				console.error({err})
				this.$bvToast.toast(err.message || 'Wallet connection failed', {
					title: 'Wallet',
					variant: 'danger',
				})
			}
		}
	}
}
</script>
<style lang="scss">
@import "assets/scss/main";
.header {
	border-bottom: $dark 2px solid;

	&__link {
		.nav-link {
			color: $dark !important;
			line-height: 1.2rem;
			@include fonts(normal, 300, 1.25rem, "Neue Machina")
		}
	}
	&__brand {
		color: $dark !important;
		line-height: 2.3rem;
		@include fonts(normal, 800, 2.5rem, "Neue Machina-bold")
	}
	.navbar-toggler {
		background: $brand-primary;
	}
}
</style>
