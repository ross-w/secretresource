define secretresource::wrap($res_name, $params) {
  if $::puppet_catalog_cache_terminus == 'none' {
    create_resources($res_name, $params)
  } else {
    notify{"Puppet catalog cache terminus should be 'none', is presently '${::puppet_catalog_cache_terminus}'. Skipping wrapped class ${name}. Run puppet again.":
      loglevel => 'warning',
    }
  }

  redact('params')
}