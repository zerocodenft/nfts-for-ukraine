<template>
	<div class='collection-items-wrapper__card mx-2 py-4 my-3 position-relative d-flex flex-column justify-content-between'>
		<div class="collection-items-wrapper__card__nft">
		<router-link :class="{'bocked': collection.placeholder}" :to="`/nft-page/${collection.slug}`">
			<b-img :class="['w-100 h-100', collection.placeholder && 'blurred']" :src='require(`@/assets/img/nfts/${collection.nft}.svg`)' />
			<span v-if='!collection.placeholder' class='text-white position-absolute collection-items-wrapper__card__nft-price text-nowrap p-3'>{{collection.price}}</span>
		</router-link>
		</div>
		<div class='collection-items-wrapper__card__action'>
			<b-row class='no-gutter flex-column px-3'>
				<b-col>
					<p class='collection-items-wrapper__card__action-title'>{{collection.title}}</p>
				</b-col>
				<b-col>
					<p class='collection-items-wrapper__card__action-description mt-3' v-html='collection.description' />
				</b-col>
			</b-row>
			<b-row class='px-3 mt-3'>
				<b-col class='col-9'>
					<b-button :disabled='collection.placeholder' class='collection-items-wrapper__card__action-buy w-100 border-0 shadow-none' :to="`/nft-page/${collection.slug}`">MINT</b-button>
				</b-col>
				<b-col class='col-3'>
					<b-button :disabled='collection.placeholder' class='collection-items-wrapper__card__action-share shadow-none border-0 p-0 bg-transparent w-100'>
						<b-img src='@/assets/img/collection-share.svg' />
					</b-button>
				</b-col>
			</b-row>
		</div>
	</div>
</template>

<script>
export default {
	name: 'CollectionItem',
	props: {
		collection: {
			type: Object,
			default: () => {}
		}
	}
}
</script>

<style lang="scss" scoped>
@import "assets/scss/variables";
@import "assets/scss/mixins";
@import "assets/fonts/NeueMachine/fontface.css";
@mixin border-radius($brs) {
	border-radius: $brs;
}
.blurred {
	filter: blur(8px)
}
.collection-items-wrapper__card {
	box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
	@include border-radius(.8rem);
	outline: 2px solid rgba(0, 0, 0, 0.55);
	filter: drop-shadow(0px 16px 16px rgba(0, 0, 0, 0.16));
	&__nft {
		&-price {
			background: $dark;
			@include border-radius(.8rem);
			right: 2rem;
			top: 2rem;
			background: rgba(0, 0, 0, 0.6);
			box-shadow: 10px 10px 20px rgba(0 0 0 / .24);
			backdrop-filter: blur(10px);
		}
	}
	&__action {
		box-sizing: border-box;
		&-title {
			@include fonts(normal, normal, 1.125rem, 'Neue Machina-800')
		}
		&-description {
			@include fonts(normal, normal, 1.125rem, 'Neue Machina-300')
		}
		&-buy {
			@include border-radius(.5rem);
			background: $dark !important;
		}
		&-share {
			img {
				width: 2rem;
			}
		}
	}
}
.bocked {
	pointer-events: none;
}

</style>
