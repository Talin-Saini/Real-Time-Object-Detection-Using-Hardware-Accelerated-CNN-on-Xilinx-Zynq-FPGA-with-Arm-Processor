# 2026-02-18T13:52:41.502742200
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

vitis.dispose()

