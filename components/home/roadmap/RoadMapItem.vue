<template>
	<div
		class="roadmap__item d-flex align-items-center mt-2 mt-lg-0 flex-column flex-md-row"
		:class="[!left && 'ml-auto', !left && 'justify-content-end']"
	>
		<b-img
			v-if="left"
			width="160"
			class="mr-3"
			:src="require(`@/assets/img/home/roadmap/${img}`)"
			alt="black block"
		/>
		<div class="d-flex justify-content-between align-items-center roadmap__content flex-column flex-md-row order-1 order-md-0">
			<div
				class="roadmap__title"
				:class="[!left && 'order-md-2', left ? 'mr-lg-3' : 'ml-lg-3']"
			>
				<p class='text-nowrap px-2'>{{ item.title }}</p>
			</div>
			<div
				class="roadmap__description"
			>
				{{ item.text }}
			</div>
		</div>
		<b-img
			v-if="!left"
			width="160"
			class="order-0 order-md-1"
			:src="require(`@/assets/img/home/roadmap/${img}`)"
			alt="black block"
		/>
	</div>
</template>

<script>
export default {
	name: 'RoadMapItem',
	props: {
		img: {
			type: String,
			required: true
		},
		left: {
			type: Boolean,
			default: false
		},
		item: {
			type: Object,
			required: true
		}
	}
}
</script>

<style scoped lang='scss'>
.roadmap__item {
}
</style>
