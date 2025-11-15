import type { NextConfig } from "next";

const nextConfig: NextConfig = {
	// Disable typed routes for API app since it uses catch-all routes
	// typedRoutes: true,
	redirects: async () => {
		return [
			{
				source: "/",
				destination: "/api",
				permanent: false,
			},
		];
	},
};

export default nextConfig;
