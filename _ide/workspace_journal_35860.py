# 2025-11-28T09:51:02.246712600
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cordicbeta")
status = platform.build()

comp = client.get_component(name="cordicbeta_app")
comp.build()

vitis.dispose()

