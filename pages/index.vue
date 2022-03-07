<template>
	<b-container class='nft-container pt-5' fluid>
		<b-row class='m-auto mt-5 pt-2 pt-sm-5'>
			<WelcomePage />
			<Collection id="collection" />
			<OurMission id="our-mission" />
			<Team id="team" />
			<RoadMap id="roadmap" />
			<FAQ id="faq" />
			<PartnerWithUs id="partner"/>
		</b-row>
	</b-container>
</template>

<script>
console.group('Powered by www.zerocodenft.com')
console.info(
	'%cDrop Your NFT collection with ZERO coding skills!',
	`background: linear-gradient(100.07deg, #DB6F3D -28.71%, #9534DE 36.75%, #5FB9E6 103.59%);
  color:white;
  font-weight:bold;`
)
console.groupEnd()
import RoadMap from "@/components/home/roadmap/RoadMap";
import OurMission from "@/components/home/out-mission/OurMission";
import Collection from '@/components/home/collection/Collection'
import MintMixin from '@/mixins/mint'
import WelcomePage from '@/components/home/welcome-page/WelcomePage'
import Team from '@/components/home/our-team/Team'
import FAQ from "~/components/home/FAQ/FAQ";
import PartnerWithUs from '@/components/home/partner-with-us/PartnerWithUs'

export default {
	mixins: [MintMixin],
	components: {
		PartnerWithUs,
		RoadMap,
		Team,
		FAQ,
		OurMission,
		Collection,
		WelcomePage,
	}
}
</script>
