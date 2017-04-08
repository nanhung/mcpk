# Progress Report 
> Update: Mar. 31, 2017

---

# FDA-PBPK Project (Q3)
<!-- .slide: data-background="#800000" -->

----

### Aim
### Use "GSA"
#### TO decrease "PBPK" parameters
#### AND decrease computational cost
#### BUT NOT decrease model performance

----

Current work in Q3
### Evaluation the model performance

----

## Finished/Ongoing Works
<!-- .slide: d![](https://i.imgur.com/3qITlP1.png)
ata-background="#800000" -->
- [x] ~~Import the APAP model to the Drug Disease Model Resources (DDMoRe) repository~~
- Results comparison between all parameters and sensitivity parameters

----

## Flow Diagram
<!-- .slide: data-background="#FFFFFF" -->

```flow
st=>start: PBPK for Acetaminophen
e=>end: 
op1=>operation: MCMC for all parameters
op2=>operation: Global sensitivity Analysis
op3=>operation: Cut-off for sensitivity coefficient
op4=>operation: MCMC for sensitivity parameters
op5=>operation: Change cut-off
op6=>operation: Accuracy & Precision Test
cond=>condition: Better efficiency?

st->op1->op2(right)->op3(right)->op4->cond
cond(yes)->op6
cond(no)->op3
```

----

## Accuracy/Precision Test
- Predictions vs original datasets
- Parameter distributions
- Monte Carlo sampling

----

#### Accuracy - Evaluation of Model Fit
<!-- .slide: data-background="#FFFFFF" -->
![](https://i.imgur.com/XRefmZT.png)

----

#### Accuracy - Evaluation of Model Fit
<!-- .slide: data-background="#FFFFFF" -->
![](https://i.imgur.com/75afULI.png)


----

#### Parameter Distribution
<!-- .slide: data-background="#FFFFFF" -->
![](https://i.imgur.com/Ojdpr1M.png)

----

#### Precision (==Parent==)
<!-- .slide: data-background="#FFFFFF" -->

![](https://i.imgur.com/lenTjbo.png)

----

#### Precision (==Conjugates==)
<!-- .slide: data-background="#FFFFFF" -->

![](https://i.imgur.com/cEsdW4W.png)


----

## Following Works

Evaluation of model performance 

Quantify and compare the precision in the model performance<!-- .element: class="fragment" data-fragment-index="2" -->

---

# TCE-PBPK
<!-- .slide: data-background="#800000" -->

----

## :construction_worker: Model Construction 
# 20 (original)
# -4 (Removed)
# +3 (finished) 
# +9 (constructing)

----

## Original (Model and data)

+ All 7 compounds in Blood (not include NaDCVC) 
+ TCOH + TCOG in Blood
+ TCE in Inh, Exh, Ven, Kid, Liv, Fat 
+ TCA in Plasma, Liv, Urn
+ TCOH in Liv
+ TCOG in Liv, Urn

----

## Removed (4)
1. InhPPM -
2. CBldMix - Concentration in mixed art+ven blood
3. zAExhpost - Amount exhaled post-exposure
4. TotCTCOH - TCOH+TCOG Concentration

----

## Removed (4 studies)
- Fisher et al. (1991) - Inhalation 
- Green and Prout (1985) - Gavage and TCA iv
- Prout et al. (1985) -  Garvage
- Merdink et al. (1998) - iv and CH iv

----

## Finished (3)
- [x] Brain: TCA, TCOH
- [x] Kidney: TCA
---
## Constructing (9)
- [ ] Brain: DCVG, NaDCVC
- [ ] Liver: DCVG, DCVC, NaDCVC
- [ ] Kidney: DCVG, DCVC, NaDCVC
- [ ] Blood: NaDCVC

----

### Model Compiling
<!-- .slide: data-background="#FFFFFF" -->

```flow
st=>start: TCE.2.0.model
e=>end: TCE.2.0.out
op=>operation: mcsim.TCE.2.0
st2=>start: TCE.2.0.in
sub1=>subroutine: GNU MCSim
cond=>condition: Yes or No?

st->sub1->op

```

----
### Data Input-Output
```flow
st=>start: TCE.2.0.in
e=>end: TCE.2.0.out
op=>operation: mcsim.TCE.2.0
sub1=>subroutine: GNU MCSim
cond=>condition: Yes or No?

st(right)->op(right)->e

```

----
```
$ makemcsim TCE.2.0.model    ## Generate executable file
$ mcsim.TCE.2.0 TCE.2.0.in   ## Model simulation
```

----

## Flow Diagram of Model Development 
<!-- .slide: data-background="#FFFFFF" -->

```flow
st1=>start: TCE.2.0.model & TCE.2.0.in
e=>end: TCE2.0.x.model & TCE.2.0.x.in
op1=>operation: Model file revise 
cond1=>condition: Compiled?
op2=>operation: in file revise
cond2=>condition: Test ok?
op3=>operation: Check output result
cond3=>condition: OK?


st1(right)->op1(right)->cond1->op2(right)->cond2->op3(right)->cond3
cond1(yes)->op2
cond1(no)->op1
cond2(yes)->op3
cond2(no)->op1
cond3(yes)->e
cond3(no)->op2

```

----

### After model update and test run... 
1. Convergence analysis
2. Posterior distributions
3. Accuracy/Precision test 

----

## Model Test
- [x] TCE v2.0 (Complete, Date: 3/24)
- [ ] TCE v2.0.4 (Ongoing, current version)
- [ ] TCE v2.0.5 

----

## Simulation Test
- Original: 45 experiments in 9 groups 
- Remove: 11 experiments in 3 groups 
- Add: 8 experiments in 4 groups

----

### Potential problems

## :computer: Blood <-> Serum :mouse2:
## mg/L <-> nmol/g

----

### Following Works 
## :computer: **Model Update and Test (Conjugates)**
