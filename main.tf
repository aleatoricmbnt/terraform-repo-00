resource "random_pet" "repo_00" {
  keepers = {
    # Generate a new pet name each time
    time = timestamp()
  } 
}

output "repo_00_pet" {
  value = resource.random_pet.repo_00.id
}