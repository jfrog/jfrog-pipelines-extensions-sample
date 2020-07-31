checkHealth() {
  local url=$(find_step_configuration_value "healthCheckUrl")
  {
    statusCode=$(curl --silent --output /dev/stderr --write-out "%{http_code}" "$url")
  } || exitCode=$?
  if test $statusCode -ne 200; then
    echo "Health check failed with statusCode: $statusCode & exitCode: $exitCode for url: $url"
    exit 1
  else
    echo "Health check succeeded"
  fi
}

execute_command checkHealth