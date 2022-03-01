<template>
	<div>
		<Header class='metazoid-container' />
		<Nuxt />
		<Footer class='metazoid-container' />
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
