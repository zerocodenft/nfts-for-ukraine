<template>
	<div class='nft-container'>
		<BackButton />
		<div class='nft-page d-flex flex-md-row flex-column-reverse justify-content-between pr-md-5'>
			<div class='nft-page__container'>
				<div class='nft-page__title'>
					Remarkable Ukraine
				</div>
				<div class='nft-page__details py-3 my-4'>
					Lorem ipsum toga rada sarah text goest here...Lorem ipsum toga rada sarah text goest here...Lorem ipsum toga
					rada sarah text goest here...Lorem ipsum toga rada sarah text goest here...Lorem ipsum toga rada sarah text
					goest here...
				</div>
				<div class='nft-page__main'>Quantaty: <span class='nft-page__sub'>2000</span></div>
				<div class='nft-page__main py-3 my-4'>Original NFT: <span class='nft-page__sub'>www.originalnft.com</span></div>
				<div class='nft-page__share d-flex align-items-center pb-3 mb-4'>
					<div>
						<img :src='require("@/assets/img/nft-page/share.svg")' />
					</div>
					<div>Share with Friends</div>
				</div>
				<div class='nft-page__counter d-flex align-items-center'>
					<div class='nft-page__counter__input d-flex align-items-center'>
						<div class='action d-flex align-items-center justify-content-center'>
							<img :src="require('@/assets/img/nft-page/minus.svg')">
						</div>
						1
						<div class='action d-flex align-items-center justify-content-center'>
							<img :src="require('@/assets/img/nft-page/plus.svg')">
						</div>
					</div>
					<b-button size='lg' class='mint'>Mint</b-button>
				</div>
			</div>
			<div class='nft-page__image d-flex flex-column justify-content-center align-items-end'>
				<div class='nft-page__price pt-4 mb-5'>
					0.105 ETH
				</div>
				<div>
					<img :src='require("@/assets/img/nft-page/nft.svg")' />
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import BackButton from '../components/general/BackButton'

export default {
	name: 'nft-page',
	components: { BackButton }
}
</script>

<style scoped lang='scss'>
@import "assets/scss/main";

.nft-page{
	&__title{
		@include fonts(normal, normal, clamp(1.2rem, 2.5vw, 2.25rem), 'Neue Machina-800')
	}
	&__details{
		max-width: 800px;
		line-height: 24px;
		@include fonts(normal, 400, 1.25rem, 'Neue Machina-300');
	}
	&__main{
		@include fonts(normal, 400, 1.25rem, 'Neue Machina-300');
	}
	&__sub{
		@include fonts(normal, 800, 1.25rem, 'Neue Machina-800');
	}
	&__share{
		gap: .5rem;
		@include fonts(normal, 800, 1rem, 'Neue Machina-800');
	}
	&__price{
		@include fonts(normal, 700, 2rem, 'Oxanium');
	}
	&__counter{
		gap: 2rem;
		@include fonts(normal, 800, 1rem, 'Oxanium');
		&__input{
			gap: .5rem;
			.action{
				border-radius: 50%;
				width: 2rem;
				height: 2rem;
				background-color: $white;
			}
		}
		.mint{
			@include fonts(normal, 800, 1rem, 'Neue Machina-800');
			padding: .75rem 5rem;
			background-color: $brand-primary;
		}
	}
}
</style>
