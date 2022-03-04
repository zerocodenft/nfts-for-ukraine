<template>
	<div class='partner-with-us w-75'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>PARTNER WITH US</span>
			</template>
		</BlockHeader>
		<div class='partner-with-us__form'>
			<p class='partner-with-us__form-title mb-4'>Lorem upsum reson tangos issa mia feroder...Lorem upsum reson tangos issa mia feroder...Lorem upsum reson
				tangos issa mia feroder...Lorem upsum reson tangos
			</p>
			<b-form-group
				id='fieldset-1'
				label='Enter your name'
				label-for='input-1'
				valid-feedback='Thank you!'
			>
				<b-form-input
					id='input-1'
					class='shadow-none mt-2'
					placeholder='Email *'
					required
					trim
				/>
				<b-form-input
					id='input-2'
					class='shadow-none mt-4'
					placeholder='Website'
					trim
				/>
				<b-form-textarea
					id="textarea"
					class='mt-4 shadow-none'
					placeholder="Collection Description"
					rows="3"
					no-resize
				/>
			</b-form-group>
			<b-button class='partner-with-us__form-send shadow-none p-2 border-0'>Send</b-button>
		</div>
	</div>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'

export default {
	name: 'PartnerWithUs',
	components: { BlockHeader }
}
</script>

<style scoped lang='scss'>
@import '@/assets/scss/mixins';
@import '@/assets/scss/variables';
.partner-with-us {
	&__form {
		&-title {
			@include fonts(normal, normal, 1.125rem, 'Neue Machina-300')
		}
		&-send {
			background: $dark;
			width: clamp(8rem, 12vw, 12rem);
		}
	}
}
.form-group {
	max-width: 30rem;
	.form-control {
		&:focus {
			border: 1px solid #ccc;
		}
		&::placeholder {
			@include fonts(normal, normal, .8rem, 'Neue Machina-300');
			color: $dark;
		}
	}
}
</style>
