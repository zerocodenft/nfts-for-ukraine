<template>
	<div class='home-bg-frame'>
		<Header />
		<Nuxt />
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
	}
}
</script>
<style lang='scss'>
.home-bg-frame {
	background: url("~/assets/img/home/home-bg-frame.png") top no-repeat;
	background-size: 100% 100%;
}
</style>
