#!/bin/bash -e

SERVICES="grox exoplanet ice-and-fire martian msp planetzor spacesos"

for SERVICE in $SERVICES; do

  if [[ -n "$1" ]] && [[ "$1" != "$SERVICE" ]] && [[ "$1" != "all" ]]; then
    continue
  fi

  COMPOSE="./services/$SERVICE/docker-compose.yml"

  echo "Starting service $SERVICE, compose file $COMPOSE"
  time docker-compose -f "$COMPOSE" down -v
  echo "Started!"
done

