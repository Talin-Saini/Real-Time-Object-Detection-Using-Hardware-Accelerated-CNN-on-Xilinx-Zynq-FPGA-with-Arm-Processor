# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
weights8 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
weights6 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
weights4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
weights2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
output_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
Cin { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
Cout { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
H { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
W { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
precision { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


