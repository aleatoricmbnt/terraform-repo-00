resource "random_pet" "repo_00" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "submodule_pet" {
  value = resource.random_pet.repo_00.id
}