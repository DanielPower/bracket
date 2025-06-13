import { Manifold } from '$lib/manifold';

export const faceplate = (width: number) => {
	const cube = Manifold.cube([width, 1, 1]);
	return cube.getMesh();
};
