<template>
	<div class="w-100 my-2 py-2 my-md-4 py-md-3">
		<div class='d-flex back-button cursor-pointer' @click="onBack">
			<svg class='arrow' width="59" height="19" viewBox="0 0 59 19" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path d="M2 9.24472H50.8999M45.0319 2C46.1255 2.46501 58.9456 8.33189 56.7469 10.6232C54.1928 13.2849 50.5261 13.5988 48.4112 17" stroke="black" stroke-width="3" stroke-linecap="round"/>
			</svg>
			<div class='title'>Back</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'BackButton',
	methods: {
		onBack() {
			window.history.length > 1 ? this.$router.go(-1) : this.$router.push('/')
		}
	}
}
</script>

<style lang="scss" scoped>
@import 'assets/scss/mixins';
.back-button {
	gap: 1rem;
	transition: all .2s;
	&:hover {
		.title {
			color: #686868;
		}
		.arrow > path {
			stroke: #686868;
		}
	}
	.title {
		@include fonts(normal, normal, clamp(1.2rem, 2.5vw, 1.5rem), 'Neue Machina-800')
	}
	.arrow {
		transform: rotate(180deg);
	}
}
</style>
