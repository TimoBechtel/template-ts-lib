import hello from '.';

test('returns a custom hello string', () => {
	const result = hello('John');
	expect(result).toBe('Hello John!');
});
