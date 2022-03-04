<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class="title d-flex text-black align-items-center pl-2">ROADMAP</span>
			</template>
		</BlockHeader>

		<div class="ml-sx-5 pl-2 pt-2 mb-5 ml-lg-5">
			<div class="content__header mb-3 ml-lg-n5">And thats how we will do it</div>
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
			{title: "March 2022", image: "black-block.svg", text: "Our first limited edition drop features reimagined art from a few of our favorite NFT collections. There is something for everyone, including work derived from CryptoPunks, World of Women and Remarkable Women."},
			{title: "25% Sold", image: "white-block.svg", text: "At 25% of the collection sold, we will release the next limited edition NFT series. 100% of donations will continue to go directly to Ukraine fund with each purchase."},
			{title: "Meet the team", image: "white-block.svg", text: "We will partner with unique artists to create the next limited editions. We will also announce a twitter spaces session with the team and some special guests."},
			{title: "Next checkpoint", image: "white-block.svg", text: "Our holders can continue to expect limited edition drops as we partner with blue chip holders. We encourage you to collect more than one edition!"},
			{title: "Sold out Edition", image: "black-heart.svg", text: "When any of our editions sell out, we will airdrop 10 random holders a gift of thanks. We stand with Ukraine and appreciate that the world stands with us.  "},
		]
	})
}
</script>

<style lang="scss">
@import 'assets/scss/main';
.roadmap {
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
