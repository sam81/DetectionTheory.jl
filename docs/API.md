# SDT

## Exported
---

#### dprimeABX(H::Real, FA::Real, method::String)
Compute d' for an ABX task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::String`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### Examples

    #independent observations model
    dp = dprimeABX(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeABX(0.7, 0.2, "diff")


**source:**
[SDT/src/SDT.jl:29](file:///home/sam/.julia/v0.3/SDT/src/SDT.jl)

---

#### dprimeMAFC(pc::Real, m::Integer)
Compute d' corresponding to a certain proportion of correct
responses in m-AFC tasks.

##### Arguments

* `Pc::Real`: Proportion of correct responses.
* `m::Integer`: Number of alternatives.

##### Returns

* `dprime::Real`: d' value

##### Examples

    dp = dprimeMAFC(0.7, 3)



**source:**
[SDT/src/SDT.jl:78](file:///home/sam/.julia/v0.3/SDT/src/SDT.jl)

---

#### dprimeOddity(pc::Real)
Compute d' for an oddity task.

##### Arguments

* `pc::Real`: Proportion of correct responses.

##### Returns

* `dprime::Real`: d' value

##### Examples

    dp = dprimeOddity(0.7)



**source:**
[SDT/src/SDT.jl:114](file:///home/sam/.julia/v0.3/SDT/src/SDT.jl)

---

#### dprimeSD(H::Real, FA::Real, method::String)
Compute d' for one interval same/different task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::String`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### Examples

    #independent observations model
    dp = dprimeSD(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeSD(0.7, 0.2, "diff")


**source:**
[SDT/src/SDT.jl:185](file:///home/sam/.julia/v0.3/SDT/src/SDT.jl)

---

#### dprimeYesNo(H::Real, FA::Real)
Compute d' for one interval "yes/no" type tasks from hits and false alarm rates.

#### Arguments

* `H::Real`: Hit rate.
* `FA::Real`: False alarms rate.

#### Returns

* `dprime::Real`: d' value

#### Examples

    dp = dprimeYesNo(0.7, 0.2)



**source:**
[SDT/src/SDT.jl:151](file:///home/sam/.julia/v0.3/SDT/src/SDT.jl)


