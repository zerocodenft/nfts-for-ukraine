<template>
	<footer class='footer my-5 py-2'>
		<b-row class='justify-content-center justify-content-md-between  flex-column flex-md-row mb-md-5'>
			<b-col cols='12' md='3' class='mb-5 mb-md-0 d-flex justify-content-center justify-content-md-between'>
<!--				<b-img src='@/assets/img/logos/footer-img.png' />-->
			</b-col>
			<b-col cols='12' md='6'
						 class='d-flex align-items-center justify-content-md-center text-md-left text-center flex-md-row flex-column'>
				<h6 class='text-white pb-2 mb-md-0 pb-md-0 font-pres footer__contact-address-txt'>VERIFIED SMART <br>
					<span class='m-0'>CONTRACT ADDRESS:</span>
				</h6>
				<b-button
					class='border-0 font-pres d-flex align-items-center justify-content-center green-btn ml-md-4 mb-5 mb-md-0 footer__verified-btn'>
					VERIFIED
				</b-button>
			</b-col>
			<b-col cols='12' md='3' class='d-flex flex-column align-items-center align-items-md-end justify-content-center'>
				<b-link>
<!--					<b-img-->
<!--						v-for='(link, index) in links'-->
<!--						:key='index'-->
<!--						width='16'-->
<!--						class='m-2'-->
<!--						:src='require(`@/assets/img/social-icon/${link.title}_green.svg`)'-->
<!--					/>-->
				</b-link>
				<nuxt-link to='terms-and-conditions'
									 class='text-white font-weight-lighter font-description mb-4 mb-md-0 footer__terms'>
					Terms & Conditions
				</nuxt-link>
			</b-col>
		</b-row>
	</footer>
</template>

<script>
export default {
	name: 'Footer',
	data: () => ({
		links: [
			{
				title: 'discord',
				url: ''
			},
			{
				title: 'twitter',
				url: ''
			},
			{
				title: 'instagram',
				url: ''
			}
		]
	})
}
</script>

<style lang='scss' scoped>
//@import '../../assets/scss/variables';
//
//.footer {
//	&__contact-address-txt {
//		line-height: $line-height-desc;
//	}
//
//	&__verified-btn {
//		height: 3.125rem;
//		width: 11.8rem;
//		NeueMachine-size: .75rem;
//	}
//
//	&__terms {
//		NeueMachine-size: .75rem;
//		line-height: 1.25rem;
//		color: rgba(255, 255, 255, 0.9);
//	}
//}
</style>
