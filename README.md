# Numerical analysis methods

This repository contains a collection of numerical analysis methods implemented in Julia. These methods are designed to solve a variety of mathematical problems using numerical techniques.

## Introduction
Numerical analysis is a branch of mathematics that focuses on developing algorithms and methods for solving mathematical problems numerically. This repository aims to provide implementations of various numerical analysis methods using the Julia programming language. These methods can be used to approximate solutions to equations, interpolate data, solve differential equations, and more.

## Instalation
To use the numerical analysis methods in this repository, follow these steps:

Ensure that you have Julia installed on your system. You can download Julia from the official website: https://julialang.org/

Clone this repository to your local machine using the following command:
```
git clone https://github.com/AdnanSilajdzic/Numerical-analysis-methods.git
```
Install the required dependencies by running the following command in the Julia REPL:
```
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```
You are now ready to use the numerical analysis methods!

## Methods 
This repository includes the following methods:
### Integral approximation methods
- Composite Midpoint
- Composite Trapezoid
- Composite Simpson
- Composite Combination
- Composite Rectangle

### Interpolation methods
- Linear Spline
- Quadratic Spline
- Hermite

### Equation solving methods
- Bisection
- Newton
- Secant

### Differential equation solving methods
- Explicit Euler
- Implicit Euler
