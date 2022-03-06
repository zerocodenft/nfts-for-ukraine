<template>
	<b-col cols='12'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>OUR MISSION</span>
			</template>
		</BlockHeader>

		<div class='ml-sx-5 pl-2 pt-2'>
			<div class='content__header mb-3'>
				Supporting our Country
			</div>
			<div class='content__text'>
				<p>We determined that donating to Ukraine directly is the best way we can help in the immediate defense against the Russian invasion,
					while leaving it to Ukraine to allocate funds to help rebuild the country and support displaced civilians long-term.
				</p>
				<p class='mt-4'>The contract has been written so funds go directly to the fund being managed by the Ukrainian Digital Ministry
					<br/><span class='content__text-wallet'>[ETH and USDT (ERC-20) - 0x165CD37b4C644C2921454429E7F9358d18A45e14].</span>
					<br/>
					Future collection sales may direct funding to specific humanitarian organizations,
					with those decisions being transparent and tfunding clearly trackable by minters.
				</p>
			</div>
		</div>
	</b-col>
</template>

<script>
import BlockHeader from '~/components/general/BlockHeader'

export default {
	name: 'OurMission',
	components: {
		BlockHeader
	}
}
</script>

<style lang='scss'>
@import "assets/scss/main";

.content {
	&__text {
		&-wallet {
			@include fonts(normal, 400, clamp(.6rem, 2.5vw,  1.25rem), "Neue Machina-800");
		}
		@include fonts(normal, 400, 1.25rem, "Neue Machina-300");
	}

	&__header {
		line-height: 1.9rem;
		@include fonts(normal, 800, 1.75rem, "Neue Machina-bold")
	}
}
</style>
