"use strict";

import * as lib from "../lib/index";

describe("適当なテスト", () => {
	it("Hi! TypeScript", () => {
		assert(lib.hi() === "Hi! TypeScript");
	});

	it("Hi! vvakame", () => {
		assert(lib.hi("vvakame") === "Hi! vvakame");
	});
});