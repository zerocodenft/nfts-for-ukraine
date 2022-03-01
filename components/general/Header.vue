<template>
	<div class="navbar__wrapper d-flex flex-column flex-md-row align-items-center justify-content-between justify-content-md-between overflow-hidden mh-100 position-relative">
		<b-navbar class="navbar__wrapper__content p-0 d-flex justify-content-md-between z-index-1 m-0 w-100" toggleable="lg" type="dark" variant="">
			<b-navbar-brand to="/preview">
				<div class="mr-xl-5">
<!--					<b-img class="navbar__wrapper__content-logo" src="@/assets/img/logos/metazoid_social_club_logo.svg"/>-->
				</div>
			</b-navbar-brand>
			<b-navbar-toggle target="nav-collapse" class='order-2'></b-navbar-toggle>
			<b-collapse id="nav-collapse" class="order-md-1 order-2 justify-content-center justify-content-md-center" is-nav>
				<b-navbar-nav class="navbar__wrapper__content__links d-flex justify-content-center align-items-center">
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap" to="/#home">HOME</b-nav-item>
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap" to="/#about-project">ABOUT PROJECT</b-nav-item>
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap" to="/#where-buy">WHERE TO BUY</b-nav-item>
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap" to="/#road-map">ROAD MAP</b-nav-item>
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap" to="/#our-team">OUR TEAM</b-nav-item>
					<b-nav-item class="navbar__wrapper__content__links-link shadow-none text-nowrap mb-3 mb-lg-0" to="/#members">MEMBERS</b-nav-item>
				</b-navbar-nav>
			</b-collapse>
			<div class="navbar__wrapper__content__socials d-flex justify-content-center z-index-1 order-1">
				<b-link class="navbar__wrapper__content__socials-link d-flex align-items-center justify-content-center rounded-circle m-2">
<!--					<b-img class="align-items-center" src="@/assets/img/social-icon/discord_green.svg"/>-->
				</b-link>
				<b-link class="navbar__wrapper__content__socials-link d-flex align-items-center justify-content-center rounded-circle ml-md-4 m-2">
<!--					<b-img src="@/assets/img/social-icon/twitter_green.svg"/>-->
				</b-link>
				<b-link class="navbar__wrapper__content__socials-link d-flex align-items-center justify-content-center rounded-circle ml-md-4 m-2">
<!--					<b-img src="@/assets/img/social-icon/instagram_green.svg"/>-->
				</b-link>
			</div>
		</b-navbar>
	</div>
</template>

<script>
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
//@import "../../assets/scss/variables";
//@import "../../assets/scss/mixins";
.navbar__wrapper {
	&__content {
		.navbar-brand {
			outline: none !important;
		}
		&__links {
			&-link {
				//@include fonts(normal, 400, clamp(.4rem,.7vw,.625rem), ('Press Start 2P', cursive) );
				line-height: 1rem;
				text-align: center;
				margin: 0 1rem;
				color: #96939D !important;
				position: relative;
				.nav-link:focus {
					outline: none !important;
				}
				&:hover {
					color: #fff;

					&::before {
						content: '';
						width: 100%;
						height: 0.125rem;
						//background-color: $background-btn;
						position: absolute;
						left: 0;
						top: 2rem;
					}
				}
			}
		}
		&__socials {
			&-link {
				width: 2.5rem;
				height: 2.5rem;
				//border: 0.0625rem solid $background-btn;

				&:hover {
					background-color: rgba(255,255,255,.1);
					border: 0.0625rem solid rgba(131, 255, 140, 0.62);
				}
			}
		}
	}
}
</style>
