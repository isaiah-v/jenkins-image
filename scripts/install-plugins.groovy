
for (plugin in [
  "authentication-tokens",
  "docker-commons",
  "docker-workflow",
  "pipeline-utility-steps"
]) {
  println "installing ${plugin}"
  
  e = Hudson.instance.updateCenter.getPlugin(plugin).deploy().get().getError()
  if (e != null) {
    println e.message
  }
}

println "done!"
