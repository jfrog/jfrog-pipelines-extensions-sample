test_output() {
  echo "resource name: $1"
  printenv
}

execute_command "test_output %%context.resourceName%%"
