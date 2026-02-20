# 2025-11-21T23:49:47.538430100
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

# 2025-11-21T23:49:47.538430100
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.create_hls_component(name = "cordic",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

vitis.dispose()

