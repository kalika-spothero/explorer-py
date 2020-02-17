from mamba import description, it
from expects import expect, equal


with description('Addition') as self:
    with it('can add two numbers together'):
        a = 1
        b = 2
        expect(1+2).to(equal(3))
