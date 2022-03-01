<template>
	<div class='collection-items-wrapper__card mx-2 py-4 my-3 position-relative'>
		<div class="collection-items-wrapper__card__nft">
			<b-img class='w-100 h-100' :src='require(`@/assets/img/nfts/${collection.nft}.svg`)' />
			<span class='text-white position-absolute collection-items-wrapper__card__nft-price text-nowrap p-3'>{{collection.price}}</span>
		</div>
		<div class='collection-items-wrapper__card__action'>
			<b-row class='no-gutters px-3'>
				<b-col class='col-8 p-0 d-flex align-items-center'>
					<span class='collection-items-wrapper__card__action-title'>{{collection.title}}</span>
				</b-col>
				<b-col class='col-4 d-flex justify-content-end'>
					<b-button class='collection-items-wrapper__card__action-btn d-flex align-items-center justify-content-center shadow-none bg-transparent border-0 rounded-circle'>
						<b-img src='@/assets/img/share.svg'/>
					</b-button>
					<b-button class='collection-items-wrapper__card__action-btn ml-2 d-flex align-items-center justify-content-center shadow-none bg-transparent border-0 rounded-circle'>
						<b-img src='@/assets/img/heart.svg'/>
					</b-button>
				</b-col>
			</b-row>
			<b-row class='px-3 mt-3'>
				<b-col>
					<b-button class='collection-items-wrapper__card__action-buy w-100 border-0 shadow-none rounded'>BUY</b-button>
				</b-col>
				<b-col>
					<b-button class='collection-items-wrapper__card__action-details shadow-none bg-transparent w-100'>DETAILS</b-button>
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
.collection-items-wrapper__card {
	@include border-radius(.8rem);
	outline: 2px solid rgba(0, 0, 0, 0.55);
	filter: drop-shadow(0px 16px 16px rgba(0, 0, 0, 0.16));
	&__nft {
		&-price {
			background: $dark;
			@include border-radius(.8rem);
			right: 2rem;
			top: 2rem;
			background: rgba(0, 0, 0, 0.5);
			box-shadow: 10px 10px 20px rgba(0 0 0 / .24);
			backdrop-filter: blur(10px);
		}
	}
	&__action {
		box-sizing: border-box;
		&-title {
			@include fonts(normal, 800, 1rem, 'Neue Machina-800')
		}
		&-btn {
			background: $dark !important;
			width: 2rem;
			height: 2rem;
		}
		&-buy {
			background: $dark !important;
		}
		&-details {
			color: $dark;
		}
	}
}

</style>
