## Examples for the R/finance 2017 conference

See the [main Syberia repo](https://github.com/syberia/syberia) when you feel ready
or [check out the website](https://syberia.io).

This repository holds some examples and slides for the [R/finance 2017
conference](http://www.rinfinance.com/) presentation on 
[Syberia](https://github.com/syberia/syberia).

It is organized as follows:

* The project itself is a [Syberia project](https://syberia.io). You can run
  the example model by opening R from the root of this project and 
  executing `run("example")`. Notice that following this with
  `model$predict(iris[1:5, ])` gives you some predictions.
* The [Syberia talk slides](syberia_slides.pdf) (or [PPT format](https://github.com/robertzk/rfinance17/blob/master/syberia_slides.pptx)).

### Execution

Open R from the root of this project.

```r
# Running the titanic example.
run("titanic", to = 1)
data <- within(A, X <- NULL)
run("titanic")
titanic$predict(data)

# Running the survey example
run("survey")
```

## Project details

(Copy pasted from another repo so slightly incorrect.)

This repository gives a full example of how to use Syberia
for a simple structured supervised learning project.
It consists of the following files: 

  * [The lockfile](lockfile.yml) - A specification of which packages
    should be loaded for an R session using this project through
    [lockbox](https://github.com/robertzk/lockbox).
  * [The engines file](config/engines.R) - This file is necessary
    for any Syberia project. In this example, we are using the
    [modeling engine](https://github.com/syberia/modeling.sy).
  * [An example model](models/dev/example1.R) - A trivial model
    showing how to create an [`lm`](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/lm.html)
    classifier with some trivial feature engineering. After running
    this model, the final output will be in a global variable
    called `model`.
  * [An example mungebit](lib/mungebits/sanitize_gender.R) - A trivial
    [mungebit](https://github.com/syberia;/mungebits2), the Syberia
    approach to feature engineering that allows re-use of the same
    code during experimental sandbox training and real-time prediction.
  
To run the example model, open an R console from the root of this project
and type `run("example1")`. (All dependencies should auto-install.) This uses
[fuzzy matching](https://github.com/kien/ctrlp.vim), so you can
run the model by leaving out letters as long as they appear
consecutively in the model filename: `run("ex1")` or `run("mple")` will
work equally well.

