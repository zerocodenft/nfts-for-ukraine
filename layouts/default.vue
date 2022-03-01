<template>
	<div class='home-bg-frame'>
		<Header />
		<Nuxt />
		<Footer />
	</div>
</template>
<script>
import Header from '@/components/general/Header'
import Footer from '@/components/general/Footer'

export default {
	name: 'Default-Layout',
	components: {
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
