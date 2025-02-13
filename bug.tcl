proc read_file {filename} { 
  set f [open $filename r]
  if {$f == -1} { 
    return -code error "Could not open file: $filename"
  }
  set contents [read $f]
  close $f
  return $contents
}

set contents [read_file non_existent_file.txt]
if {[catch {string length $contents}]} { 
  puts "Error: $contents"
} else { 
  puts "File contents: $contents"
}