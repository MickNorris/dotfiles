#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pyowm

owm = pyowm.OWM('63ea39292d2682b4b8db86a20e1a69dd')

observation = owm.weather_at_coords(38.676883,-77.269448)
w = observation.get_weather()




#print(w.get_status())
print(str(int(w.get_temperature('fahrenheit')["temp"])) + "°")
