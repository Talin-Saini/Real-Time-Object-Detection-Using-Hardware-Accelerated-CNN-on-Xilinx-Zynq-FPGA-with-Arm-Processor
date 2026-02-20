# 2025-09-25T11:23:45.734538400
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.create_hls_component(name = "matrix_accelerator",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

