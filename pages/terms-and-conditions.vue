<template>
	<div class='terms-and-condition'>
		<b-modal
			id='bv-modal-example'
			hide-footer
			header-close-content='✕'
		>
			<div class='d-block'>
				<h1 class='terms-and-condition__title mb-3'>Terms & Conditions</h1>
				<PerfectScrollbar>
					<p class='pr-3'>
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
						it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions goes
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
						it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions
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
						it...Lorem ipsum terms and conditions goes here Ihor will provide it...Lorem ipsum terms and conditions
					</p>
				</PerfectScrollbar>
			</div>
			<b-button class='mt-3 mt-sm-5 shadow-none border-0 close-modal' @click="$bvModal.hide('bv-modal-example')">Ok</b-button>
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

.ps {
	height: calc(100vh - 400px);
}

.terms-and-condition {
	&__title {
		@include fonts(normal,normal,clamp(1.1rem,2.5vw , 1.275rem),'Neue Machina-800')
	}
}
.modal-dialog {
	max-width: 53rem;
	@media (max-width: 576px) {
		width: 90%;
		margin: 0 auto;
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
			@media (max-width: 576px) {
				padding: 1rem;
			}
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
.modal.show .modal-dialog {
	transform: translate(0, 60px)
}
</style>
