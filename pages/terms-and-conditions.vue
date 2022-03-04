<template>
	<div class='terms-and-condition'>
		<b-modal
			id='bv-modal-example'
			hide-footer
			centered
			header-close-content='✕'
		>
			<div class='d-block'>
				<h1 class='terms-and-condition-title mb-3'>Terms & Conditions</h1>
				<p>
					Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here
					Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and
					conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide
					it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes
					here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum
					terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will
					provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and
					conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide
					it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes
					here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum
					terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will
					provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and
					conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide
					it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes
					here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum
					terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will
					provide it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and
					conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes here Ihor will provide
					it...Lorem ipsum terms and conditions goes here Ihor will provide it...
				</p>
			</div>
			<b-button class='mt-5 shadow-none border-0 close-modal' @click="$bvModal.hide('bv-modal-example')">Ok</b-button>
		</b-modal>
	</div>
</template>

<script>
export default {
	name: 'terms-and-conditions'
}
</script>

<style lang='scss'>
@import "@/assets/scss/mixins";
@import "@/assets/scss/variables";

.terms-and-condition {
	&-title {
		@include fonts(normal,normal,clamp(1.1rem,2.5vw , 1.275rem),'Neue Machina-800')

	}
}
.modal-dialog {
	width: 70%;
	max-width: 50rem;
	margin: 2rem auto;
	@media (max-width: 576px) {
		width: 85%;
	}

	.modal-content {
		border: none;
		border-radius: 1rem;

		.modal-header {
			border-bottom: none;
			padding: 1.5rem 1.5rem 0;
		}
		.modal-body {
			padding: 1.5rem;
			p {
				@include fonts(normal,normal,clamp(.7rem,2.5vw , .875rem),'Neue Machina-300');
				line-height: 20px;
				color: $dark-grey;
			}
			.close-modal {
				background: $dark;
				width: 8rem;
				line-height: 2.2rem;
			}
		}
	}
}
</style>
