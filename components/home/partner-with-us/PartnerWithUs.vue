<template>
	<div class='partner-with-us'>
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
			>
				<b-form-input
					id='email'
					class='shadow-none mt-2'
					placeholder='Email *'
					:class='{"is-invalid": !isValidEmail}'
					@blur='checkValidInput'
					v-model='formData.email'
					required
					trim
				/>
				<b-form-invalid-feedback id="email">
					Please enter the email
				</b-form-invalid-feedback>
				<b-form-input
					id='input-2'
					class='shadow-none mt-4'
					v-model='formData.website'
					placeholder='Website'
					trim
				/>
				<b-form-textarea
					id="textarea"
					class='mt-4 shadow-none'
					v-model='formData.message'
					placeholder="Collection Description"
					rows="3"
					no-resize
				/>
			</b-form-group>
			<b-button @click='sendFormData' class='partner-with-us__form-send shadow-none p-2 border-0'>Send</b-button>
		</div>
	</div>
</template>

<script>
import BlockHeader from '@/components/general/BlockHeader'

export default {
	name: 'PartnerWithUs',
	components: { BlockHeader },
	data: () => ({
		regexForEmail: /[^@]+@[^\.]+\..+/g,
		isValidEmail: false,
		formData: {
			email: '',
			website: '',
			message: ''
		}
	}),
	computed: {
		checkFormValid() {
				if(!this.formData.email.match(this.regexForEmail)) {
					return false
				}
				else return true
		}
	},
	methods: {
		checkValidInput() {
			if(this.checkFormValid) {
				this.isValidEmail = true
			}
			else this.isValidEmail = false
		},
		sendFormData() {
			if(this.checkFormValid){
				console.log(this.formData)
			}
			else this.isValidEmail = false
		}
	},
	mounted() {
		this.isValidEmail = true
	}
}
</script>

<style scoped lang='scss'>
@import '@/assets/scss/mixins';
@import '@/assets/scss/variables';
.partner-with-us {
	@media (min-width: 776px) {
		width: 75%;
	}
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
		&::placeholder {
			@include fonts(normal, normal, .8rem, 'Neue Machina-300');
			color: $dark;
		}
	}
}
</style>
