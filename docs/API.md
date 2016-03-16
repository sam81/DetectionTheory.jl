### dprimeABX(H::Real, FA::Real, method::ASCIIString)

Compute d' for an ABX task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### Examples

    #independent observations model
    dp = dprimeABX(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeABX(0.7, 0.2, "diff")

### dprimeMAFC(pc::Real, m::Integer)

Compute d' corresponding to a certain proportion of correct
responses in m-AFC tasks.

##### Arguments

* `Pc::Real`: Proportion of correct responses.
* `m::Integer`: Number of alternatives.

##### Returns

* `dprime::Real`: d' value

##### Examples

    dp = dprimeMAFC(0.7, 3)


### dprimeOddity(pc::Real, method::ASCIIString)

Compute d' for an odd-one-out task.

##### Arguments

* `pc::Real`: Proportion of correct responses.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### Examples

    dp = dprimeOddity(0.7, "diff")
    dp = dprimeOddity(0.7, "IO")


### dprimeYesNo(H::Real, FA::Real)

Compute d' for one interval "yes/no" type tasks from hits and false alarm rates.

#### Arguments

* `H::Real`: Hit rate.
* `FA::Real`: False alarms rate.

#### Returns

* `dprime::Real`: d' value

#### Examples

    dp = dprimeYesNo(0.7, 0.2)


### dprimeSD(H::Real, FA::Real, method::ASCIIString)

Compute d' for one interval same/different task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### Examples

    #independent observations model
    dp = dprimeSD(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeSD(0.7, 0.2, "diff")

