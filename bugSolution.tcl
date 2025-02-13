proc read_file {filename} { 
  set f [open $filename r]
  if {$f == -1} { 
    return -code error "Could not open file: $filename"
  }
  set contents [read $f]
  close $f
  return $contents
}

#Improved error handling using catch
if {[catch {set contents [read_file non_existent_file.txt]} msg]} { 
  puts "Error reading file: $msg"
} else { 
  puts "File contents: $contents"
}

#Example with existing file
if {[catch {set contents [read_file bugSolution.tcl]} msg]} { 
  puts "Error reading file: $msg"
} else { 
  puts "File contents: $contents"
}