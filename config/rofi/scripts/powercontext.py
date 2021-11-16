import subprocess
from pynput.mouse import Listener as MouseListener
from pynput.keyboard import Listener as KeyboardListener
import sys
import time

picture = "/home/lunarplums/.config/rofi/assets/powerbg.png"

# Checks for mouseclick then exits sxiv
def on_mouse_click(x, y, button, pressed):
        subprocess.call(["kill", str(process_sxiv.pid)])
        sys.exit()

# Checks for keypress then exits sxiv
def on_key_press(key):
    if (str(key) == 'Key.esc' or str(key) == 'Key.enter'):
        subprocess.call(["kill", str(process_sxiv.pid)])
        sys.exit()

# Launch sxiv for background
process_rofi = subprocess.Popen(['/home/lunarplums/.config/rofi/scripts/poweroptions.sh'])

# Edit this to sync feh and rofi better
#time.sleep(0.00)

# Edit the '576x324+672+378' to fit your rofi
process_sxiv = subprocess.Popen(["sxiv", '-b', '-g', '87x86+8+1078', '-N', 'rofi-power-bg-0', picture])

# Setup the listener threads
keyboard_listener = KeyboardListener(on_press=on_key_press)
mouse_listener =    MouseListener(on_click=on_mouse_click)

keyboard_listener.start()
mouse_listener.start()
keyboard_listener.join()
mouse_listener.join()





