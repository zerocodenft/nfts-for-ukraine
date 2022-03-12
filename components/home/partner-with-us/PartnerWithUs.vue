<template>
	<div class='partner-with-us'>
		<BlockHeader>
			<template #title>
				<span class='title d-flex text-black align-items-center pl-2'>PARTNER WITH US</span>
			</template>
		</BlockHeader>
		<div class='partner-with-us__form'>
			<p class='partner-with-us__form-title mb-4'>If you are interested in supporting this effort and working with us (as a blue chip holder, a web3 influencer, artist, event organizer, etc.) please reach out.
			</p>
			<b-form-group
				id='fieldset-1'
				label='Enter your name'
				label-for='input-1'
			>
				<div class='partner-with-us__input-group position-relative'>
					<label
						class='partner-with-us__label required position-absolute'
						for='email'
					>
						Email
					</label>
					<b-form-input
						id='email'
						class='shadow-none mt-2'
						:class='{"is-invalid": !isValidEmail}'
						@blur='checkValidInput'
						v-model='formData.email'
						required
						trim
					/>
					<b-form-invalid-feedback id="email">
						Please enter the email
					</b-form-invalid-feedback>
				</div>

				<div class='partner-with-us__input-group position-relative'>
					<label
						class='partner-with-us__label position-absolute'
						for='input-2'
					>
						Website
					</label>
					<b-form-input
						id='input-2'
						class='shadow-none mt-4'
						v-model='formData.website'
						trim
					/>
				</div>

				<div class='partner-with-us__input-group position-relative'>
					<label
						class='partner-with-us__label position-absolute'
						for='textarea'
					>
						Collection Description
					</label>

					<b-form-textarea
						id="textarea"
						class='mt-4 shadow-none'
						v-model='formData.message'
						rows="3"
						no-resize
					/>
				</div>
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
@import '~@/assets/scss/mixins';
@import '~@/assets/scss/variables';
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

	&__input-group {
		textarea,
		input {
			height: 56px;
			padding: 28px 16px 5px;
			border: 1px solid #B3BCCA;
			@include fonts(normal, bold, 0.875rem, 'Neue Machina-bold');
			color: #030D18;
		}

		textarea {
			height: 112px;
		}
	}

	&__label {
		left: 16px;
		top: 8px;
		@include fonts(normal, bold, 0.75rem, 'Neue Machina-bold');
		color: #030D18;

		&.required::after {
			content: " *";
			color: #FA2324;
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
