<template>
	<div class="w-100">
		<div class='d-flex'>
			<b-img src='@/assets/img/arrow.svg'/>
			<slot name="title"></slot>
		</div>
	</div>
</template>

<script>
export default {
	name: 'BlockTitle',
}
</script>

<style lang="scss" scoped>
//@import 'assets/scss/variables';
//@import 'assets/scss/mixins';

//.title {
//	line-height: $line-height-title;
//	@include fonts(normal, normal, clamp(1.2rem, 2.5vw,1.875rem), 'Press Start 2P');
//	@media (max-width: 767px) {
//		line-height: 1.875rem;
//	}
//}
</style>
