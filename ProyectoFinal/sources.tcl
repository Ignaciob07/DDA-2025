# Set root path
set root_dir [file normalize "~/Documents/Master/DDA-2025/ProyectoFinal/RTL"]

# Recursive procedure to find all .v files
proc recursive_add_files {dir} {
    foreach item [glob -nocomplain -directory $dir *] {
        if {[file isdirectory $item]} {
            # Recurse into subdirectory
            recursive_add_files $item
        } elseif {[string match "*.v" $item]} {
            if {[string match "*_tb.v" $item]} {
                puts "Adding TB: $item"
                add_files -fileset sim_1 $item
            } else {
                puts "Adding source: $item"
                add_files -fileset sources_1 $item
            }
        }
    }
}

# Call it
recursive_add_files $root_dir
