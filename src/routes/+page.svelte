<script lang="ts">
	import { Canvas } from '@threlte/core';
	import Scene from '$lib/Scene.svelte';
	import Sidebar from '$lib/components/Sidebar.svelte';
	import TopBar from '$lib/components/TopBar.svelte';

	let faceplateWidth = $state(1);
</script>

<div class="grid h-full w-full grid-cols-[256px_1fr] grid-rows-[64px_1fr]">
	<div class="col-span-2">
		<TopBar />
	</div>

	<div class="row-start-2">
		<Sidebar bind:faceplateWidth />
	</div>

	<div class="bg-surface-900 row-start-2 min-h-0 min-w-0">
		<Canvas>
			<Scene {faceplateWidth} />
		</Canvas>
	</div>
</div>
