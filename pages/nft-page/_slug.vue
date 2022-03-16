<template>
	<div class="nft-container">
		<BackButton />
		<div
			class="
				nft-page
				d-flex
				flex-md-row flex-column-reverse
				justify-content-between
				pr-md-5
			">
			<div class="nft-page__container">
				<div class="nft-page__title">
					{{ nft.title }}
				</div>
				<div class="nft-page__details py-3 my-4">
					{{ nft.descriptionPage }}
				</div>
				<div class="nft-page__main">
					Quantity:
					<span class="nft-page__sub"
						>{{ mintedCount }}/{{ nft.quantity }}</span
					>
				</div>
				<div class="nft-page__main py-3 my-4">
					Donated by:
					<b-link
						:href="`https://twitter.com/${nft.donatedBy}`"
						target="_blank"
						class="nft-page__sub"
						>{{ nft.donatedBy }}</b-link
					>
				</div>
				<b-button id='share-button' class="nft-page__share d-flex bg-transparent border-0 shadow-none align-items-center pl-0 mb-4">
					<div>
						<img :src="require('assets/img/nft-page/share.svg')" />
					</div>
					<span class='nft-page__share-text'>Share with Friends</span>
				</b-button>
				<b-popover custom-class='share-popup border-0' placement='top' target="share-button" triggers="hover">
					<div class='d-flex share-popup__wrapper'>
						<ShareSocial
							v-for='(network, index) in socialMedia'
							:network='network'
							:key='index'
							:title='nft.title'
							:description='nft.descriptionPage'
							:url="`https://apeinforukraine.com/nft-page/${nft.slug}`"
						>
							<img :src="require(`@/assets/img/social-media/${network}.svg`)" :alt="network">
						</ShareSocial>
					</div>
				</b-popover>
				<div class="nft-page__counter d-flex align-items-center">
					<div
						class="
							nft-page__counter__input
							d-flex
							align-items-center
							cursor-pointer
						">
						<b-button
							class="action shadow-none d-flex align-items-center border-0 justify-content-center"
							:disabled="count === 1"
							@click="count--">
							<img
								:src="require('assets/img/nft-page/minus.svg')"
								alt="minus" />
						</b-button>
						<span class="px-2">{{ count }}</span>
						<b-button
							variant="transparent"
							class="
								action
								shadow-none
								d-flex
								align-items-center
								justify-content-center
								cursor-pointer
							"
							:disabled="count === 10"
							@click="count++">
							<img
								:src="require('assets/img/nft-page/plus.svg')"
								alt="plus" />
						</b-button>
					</div>
					<b-overlay :show="isBusy">
						<b-button size="lg" class="mint" @click="onMint">Mint</b-button>
					</b-overlay>
				</div>
			</div>
			<div
				class="
					nft-page__image
					d-flex
					flex-column
					justify-content-center
					align-items-end
				">
				<div class="nft-page__price pt-4 mb-4 mb-md-5">{{ nft.price }} ETH</div>
				<div class='d-flex w-100 justify-content-center d-md-block'>
					<picture>
						<source
							class='nft-page__main-image'
							:srcset="require(`@/assets/img/nft-page/${nft.image}.webp`)"
							type="image/webp"
						>
						<source
							class='nft-page__main-image'
							:srcset="require(`@/assets/img/nft-page/${nft.image}.png`)"
							type="image/png"
						>
						<b-img
							class='nft-page__main-image'
							:src="require(`@/assets/img/nft-page/${nft.image}.png`)"
						/>
					</picture>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import BackButton from '../../components/general/BackButton'
import { ethers } from 'ethers'
import { dataSource } from '../../data-source/dataSource'
import ShareSocial from '../../components/general/ShareSocial'

export default {
	name: 'nft-page',
	components: { ShareSocial, BackButton },
	data: () => ({
		count: 1,
		mintedCount: 0,
		isBusy: false,
		nfts: dataSource,
		socialMedia: ['linkedin', 'twitter'],
	}),
	async asyncData({ params }) {
		const slug = params.slug
		return { slug }
	},
	computed: {
		nft() {
			return this.nfts.find((x) => x.slug === this.slug) || {}
		},
	},
	mounted() {
		const {
			chainId: targetChainId,
			abi,
			address,
		} = this.$siteConfig.smartContract

		try {
			// give some time for wallet plugin to init
			setTimeout(async () => {
				if (!this.$wallet.provider) return

				if (this.$wallet.chainId !== targetChainId) {
					await this.$wallet.switchNetwork(targetChainId)
				}

				const nftContract = new ethers.Contract(address, abi, this.$wallet.provider)
				this.mintedCount = +(await nftContract.mintedCount(this.nft.id))
			}, 2000)
		} catch (err) {
			console.error({ err })
		}
	},
	methods: {
		async onMint() {
			try {
				const {
					chainId: targetChainId,
					address,
					abi,
				} = this.$siteConfig.smartContract

				if (!this.$wallet.account) {
					await this.$wallet.connect()
				}

				if (this.$wallet.chainId !== targetChainId) {
					await this.$wallet.switchNetwork(targetChainId)
				}

				this.isBusy = true

				const signedContract = new ethers.Contract(
					address,
					abi,
					this.$wallet.provider.getSigner()
				)

				const value = (this.count * this.nft.price).toString()
				// console.log(this.count, this.nft.price, value)
				const tx = await signedContract.mint(this.count, this.nft.id, {
					value: ethers.utils.parseEther(value)
				})

				console.log({tx})

				// TODO: show some notification or thank you modal window

				tx.wait().then(res => {
					this.mintedCount += this.count
				})
			} catch (err) {
				console.error({ err })
			} finally {
				this.isBusy = false
			}
		},
	},
}
</script>

<style scoped lang="scss">
@import '../../assets/scss/main';
@import '../../assets/scss/variables';

.nft-page {
	&__title {
		@include fonts(
			normal,
			normal,
			clamp(1.2rem, 2.5vw, 2.25rem),
			'Neue Machina-800'
		);
	}
	&__details {
		max-width: 800px;
		line-height: 24px;
		@include fonts(normal, 400, 1.25rem, 'Neue Machina-300');
	}
	&__main {
		@include fonts(normal, 400, 1.25rem, 'Neue Machina-300');
	}
	&__sub {
		@include fonts(normal, 800, 1.25rem, 'Neue Machina-800');
		color: $dark;
	}
	&__share {
		gap: 0.5rem;
		@include fonts(normal, 800, 1rem, 'Neue Machina-800');
		&-text {
			color: $dark;
		}
	}
	&__price {
		@include fonts(normal, 700, 2rem, 'Oxanium');
	}
	&__main-image {
		max-width: 322px;
	}
	&__counter {
		gap: 2rem;
		@include fonts(normal, 800, 1rem, 'Oxanium');
		&__input {
			gap: 0.5rem;
			.action {
				border-radius: 50%;
				width: 2rem;
				height: 2rem;
				background-color: $white;
			}
		}
		.mint {
			@include fonts(normal, 800, 1rem, 'Neue Machina-800');
			padding: 0.75rem 5rem;
			background-color: $brand-primary;
		}
	}
}
</style>
