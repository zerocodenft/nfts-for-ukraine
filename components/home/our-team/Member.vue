<template>
	<div class='member d-flex flex-column align-items-center'>
		<div class='member__img'>
			<img :style="`transform: rotate(${member.rotate}deg)`" :src='require("@/assets/img/home/team/member.png")' alt='member'/>
		</div>
		<div class='member__full-name'>
			{{ member.firstName }} {{ member.lastName }}
		</div>
		<div class='member__about'>{{ member.about }}</div>
	</div>
</template>

<script>
export default {
	name: 'Member',
	props: {
		member: {
			type: Object,
			default: () => {},
		}
	}
}
</script>

<style scoped lang='scss'>
@import '@/assets/scss/mixins';
.member {
	&__full-name {
		margin-top: 2.625rem;
		@include fonts(normal, 800, 18px, 'Neue Machina-800');
	}
	&__about {
		margin-top: 1rem;
		text-align: center;
		@include fonts(normal, 400, 1rem, 'Neue Machina-normal');
	}
}
</style>
