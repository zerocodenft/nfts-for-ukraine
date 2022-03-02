<template>
	<b-img
		v-if="isVisible"
		class="scroll-to-top-image cursor-pointer"
		src="@/assets/img/to-top-scroll-frame.svg"
		alt="scroll to top"
		@click="scrollToTop"
	/>
</template>

<script>
const MAX_SCROLL_OFFSET = 100
export default {
	name: "ScrollToTop",
	data: () => ({
		isVisible: false,
	}),
	methods: {
		onScroll() {
			this.isVisible = document.body.scrollTop > MAX_SCROLL_OFFSET || document.documentElement.scrollTop > MAX_SCROLL_OFFSET;
		},
		scrollToTop() {
			scrollTo(0, 0)
		}
	},
	mounted() {
		addEventListener("scroll", this.onScroll)
	},
	beforeDestroy() {
		removeEventListener("scroll", this.onScroll)
	}
}
</script>

<style lang="scss">
.scroll-to-top-image {
	position: sticky;
	bottom: 30px;
	left: calc(100% - 80px);
}
</style>
