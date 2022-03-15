<template>
	<div id="header" class="header nft-container w-100 z-index-1 position-sticky pt-sm-4 d-flex flex-column flex-md-row align-items-center justify-content-between justify-content-md-between overflow-hidden">
		<b-navbar class="header__container mx-auto px-0 w-100 z-index-1 d-flex align-items-center" toggleable="lg" type="dark">
			<b-navbar-brand class="header__brand mt-md-1" to="/">
				<div class=" mr-xl-5">
					<b-img src='@/assets/img/logos/logo.svg' />
				</div>
			</b-navbar-brand>
			<b-navbar-toggle
				class="header__container__toggle bg-transparent p-0 mt-2"
				target="nav-collapse"
			>
				<div class="d-flex flex-column justify-content-between align-items-end position-relative">
					<span class='d-block'></span>
					<span class='d-block'></span>
					<span class='d-block'></span>
				</div>
			</b-navbar-toggle>
			<b-collapse id="nav-collapse" class="justify-content-between align-items-center" is-nav>
				<b-navbar-nav class=" d-flex justify-content-center align-items-center">
					<b-nav-item
						v-for="headerItem in headerItems"
						:key="headerItem.id"
						class="header__link shadow-none text-nowrap"
						link-classes="font-weight-bolder"
						:to="`/${headerItem.id}`"
						@click.passive="scrollToContent(headerItem.id)"
					>
						{{ headerItem.title }}
						<span>{{ headerItem.title }}</span>
					</b-nav-item>
				</b-navbar-nav>
				<div class="d-flex justify-content-center z-index-1 order-1">
					<b-button to="/#partner" class="brand-button d-flex align-items-center justify-content-center">Partner With Us</b-button>
				</div>
			</b-collapse>
		</b-navbar>
	</div>
</template>

<script>
const SCROLL_OFFSET = 75
export default {
	name: 'Header',
	data: () => ({
		headerItems: [
			{title: "Collection", id: "#collection"},
			{title: "Mission", id: "#our-mission"},
			{title: "Team", id: "#team"},
			{title: "Roadmap", id: "#roadmap"},
			{title: "FAQ", id: "#faq"},
		]
	}),
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
		},
		scrollToContent(id) {
			const content = document.querySelector(id)
			const offsetTop = content ? (content.offsetTop - SCROLL_OFFSET) : 0
			scrollTo(0, offsetTop)
		}
	}
}
</script>
<style lang="scss">
@import "assets/scss/main";
.header {
	top: 0;
	left: 0;
	right: 0;
	background: transparent;
	&:before {
		content: '';
		background: url("../../assets/img/header-bg-frame.svg");
		position: fixed;
		width: 100vw;
		height: 105px;
		left: 0;
		top: 0;
		@media (max-width: 600px) {
			height: 78px !important;
		}
	}

	&__container {
		&__toggle {
			& > div {
				height: 17px;
				width: 22px;
				transition: all .5s;

				span {
					height: 3px;
					width: 100%;
					background-color: #000;
					border-radius: 1rem;
					transition: all .5s;

					&:last-of-type {
						width: 70%;
					}
				}
			}

			&.not-collapsed > div {
				height: 18px;

				span {
					width: 100%;

					&:first-of-type {
						transform-origin: right top;
						transform: rotate(-45deg);
					}

					&:nth-of-type(2) {
						opacity: 0;
					}

					&:last-of-type {
						transform-origin: right bottom;
						transform: rotate(45deg);
					}
				}
			}
		}
	}

	&__link {
		.nav-link {
			color: transparent !important;
			outline: none;
			line-height: 1.2rem;
			@include fonts(normal, 300, 1.25rem, "Neue Machina-300");
			position: relative;

			span {
				position: absolute;
				left: 8px;
				top: 8px;
				color: $dark !important;
				line-height: 1.2rem;
				@include fonts(normal, normal, 1.25rem, "Neue Machina-300");
			}

			&:hover span {
				@include fonts(normal, normal, 1.25rem, "Neue Machina-bold");
			}
		}
	}
	&__brand {
		outline: none !important;
		color: $dark !important;
		line-height: 2.3rem;
		@include fonts(normal, 800, 2.5rem, "Neue Machina-bold")
	}
	.navbar {
		&-toggler {
			background: $brand-primary;
		}

		&-collapse {
			position: relative;

			&::before {
				content: "";
				position: absolute;
				height: 100%;
				width: 106%;
				left: -3%;
				top: 0;
				background: url("../../assets/img/header-bg-frame.svg");
				z-index: -1;
			}
		}
	}
}
</style>
