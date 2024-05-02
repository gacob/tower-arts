#!/bin/bash

mob_count(){
    mob_count=$((RANDOM % 3 + 1))
    echo $mob_count
}