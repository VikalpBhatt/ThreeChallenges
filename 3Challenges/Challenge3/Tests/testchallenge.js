const expect = require('chai').expect;
let val = require('../NestedObject.js');

describe('Best Case Scenarios', () => {
    it('should return a', () => {
        expect(val({x:{y:{z:"a"}}} , "x/y/z")).to.equal("a");
    });

    it('should return d', () => {
        expect(val({a:{b:{c: "d"}}} , "a/b/c")).to.equal("d");
    });
});
