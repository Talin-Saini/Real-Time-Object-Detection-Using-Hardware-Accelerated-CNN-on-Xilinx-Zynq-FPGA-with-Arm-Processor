#include "xcnn_accelerator.h"

XCnn_accelerator_Config XCnn_accelerator_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,cnn-accelerator-1.0", /* compatible */
		0x40000000 /* reg */
	},
	 {
		 NULL
	}
};