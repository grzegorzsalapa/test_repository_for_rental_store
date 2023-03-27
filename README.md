# Test repository for "rental_store" (Robot based)

This repo contains API tests for "rental_store" server. It is based on Robot Framework with a Request library.

## How to run the tests

#### Installation

    $ pip install .

#### Run from terminal

Prior to running Robot test cases, "rental_store" server must be started. All information regarding running the server
can be found in readme file of "rental_store" repo. Once the server is started, Robot tests can be run:

    $ robot --outputdir results tests/

## Requirements

All packages required to run calculator module are specified in pyproject.toml file.

