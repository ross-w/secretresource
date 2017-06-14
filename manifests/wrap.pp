define secretresource::wrap($params) {
  if member($::mountpoints, $::secretresource::blackhole_dir) {
    notify{'goodo':}
  } else {
    notify{"Blackhole directory ${::secretresource::blackhole_dir} is not mounted, skipping wrapped class ${name}"}
  }
}