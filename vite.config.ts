import tailwindcss from '@tailwindcss/vite';
import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	build: {
		target: 'es2022'
	},
	plugins: [tailwindcss(), sveltekit()],
	optimizeDeps: {
		exclude: ['manifold-3d']
	}
});
