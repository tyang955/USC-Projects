import math


def create_spiro(a, b, d):
    f = open("result", 'w')
    dt = 0.01
    t = 0
    pts = []
    while t < 2 * math.pi * b / math.gcd(a, b):
        t += dt
        x = (a - b) * math.cos(t) + d * math.cos((a - b) / b * t)
        y = (a - b) * math.sin(t) - d * math.sin((a - b) / b * t)
        f.write(str(x + -118.28544025961307)+","+str(y + 34.02053337915802)+","+"0")
        f.write('\n')
        pts.append((x + -118.28544025961307, y + 34.02053337915802))
    return pts


create_spiro(8, 1, 4)
