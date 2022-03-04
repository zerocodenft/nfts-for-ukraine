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
				<p>The contract has been written so funds go directly to the Ukraine digital wallet</p>
				<p class='content__text-wallet mt-2'>[ETH and USDT (ERC-20) - 0x165CD37b4C644C2921454429E7F9358d18A45e14].</p>
				<p class='mt-4'>We determined that donating to Ukraine directly is the best way we can help in the immediate defense against the
					Russian invasion, while leaving it to Ukraine to allocate funds to help rebuild the country and support displaced
					civilians long-term.</p>
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
		max-width: 820px;
		&-wallet {
			@include fonts(normal, 400, clamp(.6rem, 2.5vw,  1.25rem), "Neue Machina-800");
		}
		@include fonts(normal, 400, 1.25rem, "Neue Machina-300");
		line-height: 1.2rem;
	}

	&__header {
		line-height: 1.9rem;
		@include fonts(normal, 800, 1.75rem, "Neue Machina-bold")
	}
}
</style>
