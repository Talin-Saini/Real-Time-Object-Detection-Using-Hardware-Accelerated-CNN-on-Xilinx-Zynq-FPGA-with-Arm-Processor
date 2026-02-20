# 2026-02-16T15:13:16.341352100
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

comp = client.get_component(name="cnn_app")
status = comp.clean()

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp.build()

vitis.dispose()

