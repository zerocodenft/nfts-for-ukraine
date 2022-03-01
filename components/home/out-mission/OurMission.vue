<template>
	<b-col cols="12">
		<BlockHeader class="mb-5">
			<template #title>
				<span class='d-flex text-black align-items-center pl-2'>OUR MISSION</span>
			</template>
		</BlockHeader>

		<div class="ml-5 pl-2 pt-2">
			<div class="content__header mb-3">
				We here to save lives
			</div>
			<div class="content__text">
				Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...
			</div>
		</div>
	</b-col>
</template>

<script>
import BlockHeader from "~/components/general/BlockHeader";

export default {
	name: "OurMission",
	components: {
		BlockHeader
	}
}
</script>

<style lang="scss">
@import "assets/scss/main";
.content {
	&__text {
		max-width: 820px;

		@include fonts(normal, 400, 1.25rem, "Neue Machina-300");
		line-height: 1.2rem;
	}
	&__header {
		line-height: 1.9rem;
		@include fonts(normal, 800, 2rem, "Neue Machina-bold")
	}
}
</style>
