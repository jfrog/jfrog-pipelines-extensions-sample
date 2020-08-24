test_input() {
  echo "resource name: $1"
  printenv
}

execute_command "test_input %%context.resourceName%%"
