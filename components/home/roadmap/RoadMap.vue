<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class="d-flex text-black align-items-center pl-2">ROADMAP</span>
			</template>
		</BlockHeader>

		<div class="ml-sx-5 pl-2 pt-2 ml-5 mb-5">
			<div class="content__header mb-3">And thats how we will do it</div>
			<div class="content__text">
				Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos
				issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem
				upsum reson tangos
			</div>
		</div>
		<div class="roadmap">
			<template v-for="(roadmapItem, index) in roadMapItems">
				<RoadMapItem :img="roadmapItem.image" :left="!(index % 2)" :item="roadmapItem" />
				<div v-if="index < roadMapItems.length - 1" class="d-flex justify-content-center">
					<b-img class="roadmap__line" :src="require(`@/assets/img/home/roadmap/${!(index % 2) ? 'line-to-right' : 'line-to-left'}.svg`)" />
				</div>
			</template>
		</div>
	</b-col>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'
import RoadMapItem from "@/components/home/roadmap/RoadMapItem";

export default {
	name: 'RoadMap',
	components: {
		RoadMapItem,
		BlockHeader,
	},
	data: () => ({
		roadMapItems: [
			{title: "Q1 2022", image: "black-block.svg", text: "Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos"},
			{title: "Q2 2022", image: "white-block.svg", text: "Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos"},
			{title: "Q3 2022", image: "white-block.svg", text: "Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos"},
			{title: "Q4 2022", image: "white-block.svg", text: "Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos"},
			{title: "Q5 2022", image: "black-block.svg", text: "Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos"},
		]
	})
}
</script>

<style lang="scss">
@import 'assets/scss/main';
.roadmap {
	max-width: 1256px;

	&__item {
		max-width: 1084px;
	}
	&__title {
		flex-basis: 25%;
		line-height: 1.55rem;
		@include fonts(normal, 300, 1.25rem, 'Oxanium');
	}
	&__description {
		@include fonts(normal, 300, 1.25rem, 'Neue Machina-300');
		line-height: 1.2rem;

		@media (max-width: 1100px) {
			font-size: clamp(0.5rem, 0.75rem, 1rem);
		}
	}
	&__content {
		max-width: 840px;
	}
	&__line {
		padding: 0 6%;
		width: 100%;

		@media (max-width: 767px) {
			display: none;
		}
	}
}
</style>
