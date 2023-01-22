import type { Config } from 'jest';

const config: Config = {
	testEnvironment: 'node',
	transform: {
		'^.+\\.(t|j)sx?$': [
			'@swc/jest',
			{
				// configuration for react libraries
				jsc: {
					transform: {
						react: { runtime: 'automatic' },
					},
					parser: {
						syntax: 'typescript',
						tsx: true,
					},
				},
			},
		],
	},
	moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx'],
	collectCoverage: true,
};

export default config;
