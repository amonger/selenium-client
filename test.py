from xvfbwrapper import Xvfb
from selenium import webdriver
vdisplay = Xvfb ()
vdisplay.start ()
# now Firefox will run in a virtual display.
# you will not see the browser.
browser = webdriver.Firefox ()
browser.get (' http://www.google.com ')
browser.quit ()
vdisplay.stop ()
