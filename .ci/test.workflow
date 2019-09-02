workflow "spack tests" {
  resolves = "run"
}

action "install" {
  uses = "JayjeetAtGithub/spack@master"
  args = "spack install lulesh~mpi"
}

action "run" {
  needs = "install"
  uses = "JayjeetAtGithub/spack@master"
  args = "lulesh2.0 -s 100 -i 10"
}
