
# Web Servers
# RegEx matches www0, www1, www123 etc
node /^web\d+\.eggsylife\.co\.uk/ {
  include role::loadbalancer
}
