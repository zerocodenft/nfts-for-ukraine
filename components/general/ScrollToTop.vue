<template>
	<div
		class='scroll-to-top d-flex align-items-center flex-column'
		v-if='isVisible'
	>
		<b-img
			class='scroll-to-top-image cursor-pointer'
			src='@/assets/img/to-top-scroll-frame.svg'
			alt='scroll to top'
			@click='scrollToTop'
		/>
		<span class='scroll-to-top-text mt-n2'>TO TOP</span>
	</div>
</template>

<script>
const MAX_SCROLL_OFFSET = 100
export default {
	name: 'ScrollToTop',
	data: () => ({
		isVisible: false
	}),
	methods: {
		onScroll() {
			this.isVisible = document.body.scrollTop > MAX_SCROLL_OFFSET || document.documentElement.scrollTop > MAX_SCROLL_OFFSET
		},
		scrollToTop() {
			scrollTo(0, 0)
		}
	},
	mounted() {
		addEventListener('scroll', this.onScroll)
	},
	beforeDestroy() {
		removeEventListener('scroll', this.onScroll)
	}
}
</script>

<style lang='scss'>
@import 'assets/scss/mixins';

.scroll-to-top {
	position: fixed;
	bottom: 30px;
	width: 4rem;
	left: calc(100% - 80px);
	&-image {
		width: 3rem !important;
	}

	&-text {
		@include fonts(normal, normal, clamp(.7rem, 2.5vw, .8rem), 'Neue Machina-300')
	}
}
</style>
