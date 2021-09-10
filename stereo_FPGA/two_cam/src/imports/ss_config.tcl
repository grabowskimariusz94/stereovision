
set ss_top     exdes_top

namespace eval exdes_top {

	source ${srcIpDir}/exdes/bd/exdes_top/exdes_top_plugin_var.tcl
	source ${srcIpDir}/exdes/bd/exdes_top/exdes_top_plugin_func.tcl
		
	# source ./v_hdmi_tx_ss_plugin_var.tcl
	# source ./v_hdmi_tx_ss_plugin_func.tcl

}

namespace eval zynq_us_ss {
 	
 	source ${srcIpDir}/exdes/bd/zynq_us_ss/zynq_us_ss_plugin_var.tcl
 	source ${srcIpDir}/exdes/bd/zynq_us_ss/zynq_us_ss_plugin_func.tcl
 	#source ./zynq_us_ss_plugin_var.tcl
 	#source ./zynq_us_ss_plugin_func.tcl
}

namespace eval zynq_ss {
 	
 	source ${srcIpDir}/exdes/bd/zynq_ss/zynq_ss_plugin_var.tcl
 	source ${srcIpDir}/exdes/bd/zynq_ss/zynq_ss_plugin_func.tcl
	# source ./zynq_ss_plugin_var.tcl
	# source ./zynq_ss_plugin_func.tcl 
}
 
namespace eval mb_ss {
 	
 	source ${srcIpDir}/exdes/bd/mb_ss/mb_ss_plugin_var.tcl
 	source ${srcIpDir}/exdes/bd/mb_ss/mb_ss_plugin_func.tcl
	# source ./mb_ss_plugin_var.tcl
	# source ./mb_ss_plugin_func.tcl
 
}

namespace eval cips_ss {
 	
 	source ${srcIpDir}/exdes/bd/cips_ss/cips_ss_plugin_var.tcl
 	source ${srcIpDir}/exdes/bd/cips_ss/cips_ss_plugin_func.tcl
	# source ./cips_ss_plugin_var.tcl
	# source ./cips_ss_plugin_func.tcl
 
}

namespace eval hdmiphy_ss {
 	
 	source ${srcIpDir}/exdes/bd/hdmiphy_ss/hdmiphy_ss_plugin_var.tcl
 	source ${srcIpDir}/exdes/bd/hdmiphy_ss/hdmiphy_ss_plugin_func.tcl
	# source ./hdmiphy_ss_plugin_var.tcl
	# source ./hdmiphy_ss_plugin_func.tcl
 
}

namespace eval v_tpg_ss {
	
	source ${srcIpDir}/exdes/bd/v_tpg_ss/v_tpg_ss_plugin_var.tcl
	source ${srcIpDir}/exdes/bd/v_tpg_ss/v_tpg_ss_plugin_func.tcl
	# source ./v_tpg_ss_plugin_var.tcl
	# source ./v_tpg_ss_plugin_func.tcl

}

namespace eval audio_ss {
	
	source ${srcIpDir}/exdes/bd/audio_ss/audio_ss_plugin_var.tcl
	source ${srcIpDir}/exdes/bd/audio_ss/audio_ss_plugin_func.tcl
	# source ./audio_ss_plugin_var.tcl
	# source ./audio_ss_plugin_func.tcl

}

namespace eval gt_refclk_buf_ss {
	
	source ${srcIpDir}/exdes/bd/gt_refclk_buf_ss/gt_refclk_buf_ss_plugin_var.tcl
	source ${srcIpDir}/exdes/bd/gt_refclk_buf_ss/gt_refclk_buf_ss_plugin_func.tcl
	# source ./gt_refclk_buf_ss_plugin_var.tcl
	# source ./gt_refclk_buf_ss_plugin_func.tcl

}
