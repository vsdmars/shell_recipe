# https://medium.com/@marko.luksa/bash-trick-repeat-last-command-until-success-750a61c43c8a
rpt() {
  CMD=$(fc -ln | tail -2 | head -1)
  echo "repeating until success: $CMD"
  until $CMD
  do
    sleep 1
  done
}
