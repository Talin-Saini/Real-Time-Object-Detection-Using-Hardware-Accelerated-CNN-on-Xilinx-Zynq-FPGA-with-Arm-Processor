# 2025-11-22T15:26:51.985443400
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.create_hls_component(name = "cordicbeta",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

client.delete_component(name="cordic")

comp = client.get_component(name="cordicbeta")
status = comp.remove_cfg_files(cfg_files=["hls_config.cfg"])

status = comp.add_cfg_files(cfg_files=["hls_config.cfg"])

status = comp.remove_cfg_files(cfg_files=["hls_config.cfg"])

status = comp.add_cfg_files(cfg_files=["hls_config.cfg"])

vitis.dispose()

