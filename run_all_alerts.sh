#!/usr/bin/env bash
set -e
( cd market_alerts && go run main.go ) &
( cd liquidation_alerts && go run main.go ) &
( cd hack_alerts && go run main.go ) &
wait
