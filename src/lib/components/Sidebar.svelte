<script lang="ts">
	let { faceplateWidth = $bindable<number>() } = $props();
</script>

<div class="bg-surface-950 h-full w-64 p-6 shadow-lg">
	<div class="mb-6">
		<h2 class="mb-4 text-xl font-semibold text-white">Controls</h2>

		<div class="space-y-4">
			<label class="label">
				<span class="label-text">Width</span>
				<input
					class="input"
					type="number"
					min="1"
					max="100"
					value={faceplateWidth}
					oninput={(event) => {
						faceplateWidth = Number(event.currentTarget.value);
					}}
				/>
			</label>
		</div>
	</div>
</div>
