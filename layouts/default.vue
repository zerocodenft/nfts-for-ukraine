<template>
	<div :class="checkBackgroundFrame">
		<div>
			<Header />
			<Nuxt />
		</div>
		<Footer />
		<ScrollToTop />
	</div>
</template>
<script>
import Header from '@/components/general/Header'
import Footer from '@/components/general/Footer'
import ScrollToTop from "@/components/general/ScrollToTop";

export default {
	name: 'Default-Layout',
	components: {
		ScrollToTop,
		Header,
		Footer
	},
	computed: {
		checkBackgroundFrame() {
			switch (this.$route.name) {
				case 'nft-page-slug': return 'nft-bg-frame'
				default: return 'home-bg-frame'
			}
		}
	}
}
</script>
<style lang='scss'>
.home-bg-frame {
	background: url("~/assets/img/home/home-bg-frame.png") top no-repeat;
	background-size: 100% 100%;
}
.nft-bg-frame {
	background: url("~/assets/img/nft-page/nft-bg-frame.png") top no-repeat;
	background-size: 100% 100%;
	min-height: 100%;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	@media (max-width: 600px) {
		height: auto;
	}
}
</style>
