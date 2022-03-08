<template>
	<ShareNetwork
		:network="network"
		:url="url"
		:title="title"
		:description="description"
	>
		<slot />
	</ShareNetwork>
</template>

<script>

export default {
	name: 'ShareSocial',
	props: {
		network: {
			type: String,
			default: 'twitter'
		},
		url:  {
			type: String,
			default: 'https://apeinforukraine.com/'
		},
		title:  {
			type: String,
			default: ''
		},
		description:  {
			type: String,
			default: ''
		},
	}
}
</script>
