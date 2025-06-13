<script lang="ts">
	import { Grid, interactivity, OrbitControls } from '@threlte/extras';
	import { T } from '@threlte/core';
	import { BufferGeometry, MeshStandardMaterial, Mesh, BufferAttribute } from 'three';
	import { faceplate } from '$lib/brackets/faceplate';

	const material = new MeshStandardMaterial({
		color: 0xff0090,
		roughness: 0.2,
		metalness: 0.0,
		flatShading: true
	});

	let faceplateWidth = $state(1);
	let mesh: Mesh | null = $state(null);

	$effect(() => {
		const manifoldMesh = faceplate(faceplateWidth);
		const geometry = new BufferGeometry();
		geometry.setAttribute('position', new BufferAttribute(manifoldMesh.vertProperties, 3));
		geometry.setIndex(new BufferAttribute(manifoldMesh.triVerts, 1));
		geometry.computeVertexNormals();
		console.log('mesh');

		mesh = new Mesh(geometry, material);
	});

	interactivity();
</script>

<T.OrthographicCamera zoom={10} position={10} far={200} near={-200} makeDefault>
	<OrbitControls />
</T.OrthographicCamera>

<T.AmbientLight intensity={0.4} />
<T.DirectionalLight position={[1, 2, 5]} />

<T.Mesh is={mesh} />

<Grid
	gridSize={[260, 260]}
	cellColor="#ffffff"
	sectionColor="#ffffff"
	sectionThickness={0}
	cellSize={10}
	fadeDistance={300}
/>
