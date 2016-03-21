### dprimeABX(H::Real, FA::Real, method::ASCIIString)

Compute d' for an ABX task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### References

* Macmillan, N. A., & Creelman, C. D. (2004). _Detection Theory: A User’s Guide (2nd ed.)_. London: Lawrence Erlbraum Associates.

##### Examples

```julia
    #independent observations model
    dp = dprimeABX(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeABX(0.7, 0.2, "diff")
```

### dprimeMAFC(pc::Real, m::Integer)

Compute d' corresponding to a certain proportion of correct
responses in m-AFC tasks.

##### Arguments

* `Pc::Real`: Proportion of correct responses.
* `m::Integer`: Number of alternatives.

##### Returns

* `dprime::Real`: d' value

##### References

* Green, D. M., & Swets, J. A. (1988). _Signal Detection Theory and Psychophysics_. Los Altos, California: Peninsula Publishing.
* Green, D. M., & Dai, H. P. (1991). Probability of being correct with 1 of M orthogonal signals. _Perception & Psychophysics, 49(1)_, 100–101.

##### Examples

```julia
    dp = dprimeMAFC(0.7, 3)
```


### dprimeOddity(pc::Real, method::ASCIIString)

Compute d' for an odd-one-out task.

##### Arguments

* `pc::Real`: Proportion of correct responses.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### References

* Macmillan, N. A., & Creelman, C. D. (2004). _Detection Theory: A User’s Guide (2nd ed.)_. London: Lawrence Erlbraum Associates.
* Versfeld, N. J., Dai, H., & Green, D. M. (1996). The optimum decision rules for the oddity task. _Perception & Psychophysics, 58(1)_, 10–21.

##### Examples

```julia
    dp = dprimeOddity(0.7, "diff")
    dp = dprimeOddity(0.7, "IO")
```


### dprimeYesNo(H::Real, FA::Real)

Compute d' for one interval "yes/no" type tasks from hits and false alarm rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real`: False alarms rate.

##### Returns

* `dprime::Real`: d' value

##### References

* Green, D. M., & Swets, J. A. (1988). _Signal Detection Theory and Psychophysics_. Los Altos, California: Peninsula Publishing.
* Macmillan, N. A., & Creelman, C. D. (2004). _Detection Theory: A User’s Guide (2nd ed.)_. London: Lawrence Erlbraum Associates.

##### Examples

```julia
    dp = dprimeYesNo(0.7, 0.2)
```


### dprimeSD(H::Real, FA::Real, method::ASCIIString)

Compute d' for one interval same/different task from 'hit' and 'false alarm' rates.

##### Arguments

* `H::Real`: Hit rate.
* `FA::Real` : False alarm rate.
* `method::ASCIIString`: 'diff' for differencing strategy or 'IO' for independent observations strategy.

##### Returns

* `dprime::Real`: d' value

##### References

* Macmillan, N. A., & Creelman, C. D. (2004). _Detection Theory: A User’s Guide (2nd ed.)_. London: Lawrence Erlbraum Associates.
* Kingdom, F. A. A., & Prins, N. (2010). _Psychophysics: A Practical Introduction_. Academic Press.

##### Examples

```julia
    #independent observations model
    dp = dprimeSD(0.7, 0.2, "IO")
    #differencing model
    dp = dprimeSD(0.7, 0.2, "diff")
```

