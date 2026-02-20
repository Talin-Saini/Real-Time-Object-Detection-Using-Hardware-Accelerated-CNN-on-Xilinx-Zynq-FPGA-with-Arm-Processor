# 2026-02-18T23:22:59.482920300
import vitis

client = vitis.create_client()
client.set_workspace(path="ECT_110_vitis")

platform = client.get_component(name="cnn_platform")
status = platform.build()

comp = client.get_component(name="cnn_app")
comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

