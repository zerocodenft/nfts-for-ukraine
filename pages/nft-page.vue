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
					{{ nft.description }}
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
				<div class="nft-page__share d-flex align-items-center pb-3 mb-4">
					<div>
						<img :src="require('@/assets/img/nft-page/share.svg')" />
					</div>
					<div>Share with Friends</div>
				</div>
				<div class="nft-page__counter d-flex align-items-center">
					<div
						class="
							nft-page__counter__input
							d-flex
							align-items-center
							cursor-pointer
						">
						<b-button
							class="action d-flex align-items-center justify-content-center"
							:disabled="count === 1"
							@click="count--">
							<img
								:src="require('@/assets/img/nft-page/minus.svg')"
								alt="minus" />
						</b-button>
						{{ count }}
						<b-button
							variant="transparent"
							class="
								action
								d-flex
								align-items-center
								justify-content-center
								cursor-pointer
							"
							:disabled="count === 10"
							@click="count++">
							<img
								:src="require('@/assets/img/nft-page/plus.svg')"
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
				<div class="nft-page__price pt-4 mb-5">{{ nft.price }} ETH</div>
				<div>
					<img :src="nft.image" alt="nft" />
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import BackButton from '../components/general/BackButton'
import { ethers } from 'ethers'

export default {
	name: 'nft-page',
	components: { BackButton },
	data: () => ({
		count: 1,
		mintedCount: 0,
		isBusy: false,
		nfts: [
			{
				id: 1,
				title: 'Remarkable Ukrainian Woman',
				description: `The Remarkable Women Collection, reimagined to honor Ukrainian women,
							who are fighting on the front lines, providing care for others, and trying 
							to get their children and loved ones to safety. Mint limit is 10.`,
				quantity: 1000,
				donatedBy: '@Snowratcrash',
				price: 0.015,
				image: require('@/assets/img/nft-page/nft.svg'),
			},
			{
				id: 2,
				title: 'World of Ukranian Women ',
				description: `An NFT derived from the incredible WOW collection. The world of Ukrainan 
							women today is a warzone. This honors the brave women who are joining in 
							the fight for their freedom. Mint Limit is 10.`,
				quantity: 1000,
				donatedBy: '@',
				price: 0.03,
				image: require('@/assets/img/nft-page/nft.svg'),
			},
			{
				id: 3,
				title: 'Zelensky Punk',
				description: `Derived from an OG CryptoPunk. This NFT represents Zelensky, and honors  
							all the Ukranian people who have found even the most makeshift ways to join
							the fight for their coountry’s freedom.`,
				quantity: 300,
				donatedBy: '@jundoima',
				price: 0.06,
				image: require('@/assets/img/nft-page/nft.svg'),
			},
		],
	}),
	computed: {
		nft() {
			return this.nfts.find((x) => x.id === +this.$route.query.id) || {}
		},
	},
	mounted() {
		const {
			chainId: targetChainId,
			abi,
			address,
		} = this.$siteConfig.smartContract

		// try {
		// 	// give some time for wallet plugin to init
		// 	setTimeout(async () => {
		// 		if (!this.$wallet.provider) return

		// 		if (this.$wallet.chainId !== targetChainId) {
		// 			await this.$wallet.switchNetwork(targetChainId)
		// 		}

		// 		const nftContract = new ethers.Contract(address, abi, this.$wallet.provider)
		// 		this.mintedCount = +(await nftContract.totalSupply())
		// 		this.collectionSize = +(await nftContract.COLLECTION_SIZE())
		// 	}, 2000)
		// } catch (err) {
		// 	console.error({ err })
		// }
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
@import 'assets/scss/main';

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
	}
	&__share {
		gap: 0.5rem;
		@include fonts(normal, 800, 1rem, 'Neue Machina-800');
	}
	&__price {
		@include fonts(normal, 700, 2rem, 'Oxanium');
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
