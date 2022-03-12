<template>
	<b-col cols="12">
		<BlockHeader>
			<template #title>
				<span class="title d-flex text-black align-items-center pl-2">ROADMAP</span>
			</template>
		</BlockHeader>

		<div class="ml-sx-5 pl-2 pt-2 mb-5 ml-lg-5">
			<div class="content__header mb-3 ml-lg-n5">Follow our Next Steps</div>
		</div>
		<div class="roadmap">
			<template v-for="(roadmapItem, index) in roadMapItems">
				<RoadMapItem :img="roadmapItem.image" :key="roadmapItem.title" :left="!(index % 2)" :item="roadmapItem" />
				<div v-if="index < roadMapItems.length - 1" class="d-flex justify-content-center" :key="index">
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
			{title: "March 2022", image: "black-block.svg", text: "Our first limited edition drop features reimagined art from a few favorite NFT collections. There is something for everyone, including work derived from CryptoPunks, World of Women and Remarkable Women."},
			{title: "New Release", image: "white-block.svg", text: "Once we hit 1000 overall NFTs sold, we will release the next limited edition NFT. 100% of sales will continue to go directly to the identified wallets to support Ukraine."},
			{title: "Meet the team", image: "white-block.svg", text: "To talk about our continued work with artists, whales, and Web3 influencers, we will announce a Twitter Spaces session with the team and some special guests."},
			{title: "And more", image: "white-block.svg", text: "Our holders can continue to expect limited edition drops. Collect all of our editions for a special shout out and more!"},
			{title: "Sold out Edition", image: "black-heart.svg", text: "When any of our editions sell out, we will airdrop 10 random holders a gift to show our sincere thanks. We stand with Ukraine and appreciate that the world stands with us."},
		]
	})
}
</script>

<style lang="scss">
@import 'assets/scss/main';
.roadmap {
	&__item {
		//max-width: 1084px;
	}
	&__title {
		flex-basis: 25%;
		line-height: 1.55rem;
		@include fonts(normal, 300, 1.25rem, 'Oxanium');
	}
	&__description {
		@include fonts(normal, 300, clamp(.85rem, 2.5vw, 1.25rem), 'Neue Machina-300');
	}
	&__content {
		//max-width: 840px;
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
