#!/bin/bash

STRING='MISSISSIPI'

grep -o "S" <<<"$STRING" | wc -l
