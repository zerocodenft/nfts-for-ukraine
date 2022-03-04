<template>
	<div class="w-100 my-4 py-3">
		<div class='d-flex wrapper'>
			<b-img class='arrow' src='@/assets/img/arrow.svg'/>
			<div class='title'>Back</div>
		</div>
	</div>
</template>

<script>
export default {
	name: 'BackButton',
}
</script>

<style lang="scss" scoped>
@import 'assets/scss/mixins';
.wrapper {
	gap: 1rem;
	.title {
		@include fonts(normal, normal, clamp(1.2rem, 2.5vw, 1.5rem), 'Neue Machina-800')
	}

	.arrow {
		transform: rotate(180deg);
	}
}
</style>
