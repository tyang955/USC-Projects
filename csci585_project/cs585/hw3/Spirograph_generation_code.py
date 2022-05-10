import math


def create_spiro(R, r, a):
    f = open("hw4", 'w')
    dt = 0.01
    t = 0
    pts = []
    f.write('[')

    while t < 16 * math.pi:
        t += dt
        x = (R + r) * math.cos((r/R)*t) - a * math.cos((1+r/R)*t)
        y = (R + r) * math.sin((r/R)*t) - a * math.sin((1+r/R)*t)
        f.write('{"loc": [')
        f.write(str(x/100 + -118.28544025961307)+","+str(y/100 + 34.02053337915802))
        f.write(']},')
        f.write('\n')
        pts.append((x + -118.28544025961307, y + 34.02053337915802))
    return pts


create_spiro(8, 1, 4)
