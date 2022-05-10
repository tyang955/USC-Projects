"""
HW 1
Name:Tianhao Yang
Email: tyang955@usc.edu
"""
import time
import copy
import math


class Point:
    """
    Class representing a point in the Maze
    """

    def __init__(self, location=None, move=None):
        """
        Class representing a point in the graph
        """
        X, Y, Z = location.split()
        self.X = int(X)
        self.Y = int(Y)
        self.Z = int(Z)
        self.location = location
        self.move = move.split()
        self.visited = False

    def visit(self):
        """
        Set the visit flag to seen
        :return: None
        """
        self.visited = True


class Maze:
    def __init__(self, dimensions=None, entrance=None, exit=None, points=None, algorithm=None):
        """
        Initializes of a Maze
        :param dimensions: the size of the maze
        :param entrance: the entrance points location
        :param exit: the exit points location
        :param points: all available points
        """
        self.dimensions = dimensions  # Size of the maze
        self.entrance = entrance  # Entrance of the maze
        self.exit = exit  # Exit of the points
        exX, exY, exZ = exit.split()
        self.exX = int(exX)
        self.exY = int(exY)
        self.exZ = int(exZ)

        enX, enY, enZ = entrance.split()
        self.enX = int(enX)
        self.enY = int(enY)
        self.enZ = int(enZ)

        self.points = points  # All available points
        self.algorithm = algorithm  # the way to search

    def bfs(self):
        all_path = []
        start_point = self.points[self.entrance]
        temp_path = [self.entrance]

        all_path.append(temp_path)
        start_point.visit()

        while all_path:
            current = all_path.pop()
            if current[-1] == self.exit:
                return current
            else:
                self.points[current[-1]].visit()
                reachable = self.get_reachable(current[-1])
                for point in reachable:
                    if self.points[point].visited:
                        continue
                    temp = current[:]
                    temp.append(point)
                    all_path.insert(0, temp)

        return False

    def ucs(self):
        all_path = []
        start_point = self.points[self.entrance]
        temp_path = [0, [[self.entrance, 0]]]

        all_path.append(temp_path)
        start_point.visit()

        while all_path:
            current = all_path.pop()
            if current[1][-1][0] == self.exit:

                return current
            else:
                self.points[current[1][-1][0]].visit()
                reachable = self.get_reachable_cost(current[1][-1][0])
                for point in reachable:
                    if self.points[point[0]].visited:
                        continue
                    temp = copy.copy(current[1])
                    temp_cost = copy.copy(current[0])
                    temp.append(point)
                    new_path = [temp_cost + point[1], temp]

                    if not all_path:
                        all_path.insert(0, new_path)
                    else:
                        success = False
                        for i in range(len(all_path)):
                            if all_path[i][0] <= new_path[0]:
                                all_path.insert(i, new_path)
                                success = True
                                break
                        if not success:
                            all_path.append(new_path)

        return False


    def A(self):
        all_path = []
        start_point = self.points[self.entrance]

        future_cost = round(10*math.sqrt((self.enX - self.exX) ** 2 + (self.enY - self.exY) ** 2 + (self.enZ - self.exZ) ** 2))

        temp_path = [0, future_cost, [[self.entrance, 0]]]

        all_path.append(temp_path)
        start_point.visit()

        while all_path:
            current = all_path.pop()
            if current[2][-1][0] == self.exit:

                return current
            else:
                self.points[current[2][-1][0]].visit()
                reachable = self.get_reachable_cost(current[2][-1][0])
                for point in reachable:
                    node = self.points[point[0]]
                    if node.visited:
                        continue
                    temp = copy.copy(current[2])
                    temp_cost = copy.copy(current[0])
                    temp.append(point)
                    temp_future_cost = round(10*math.sqrt(
                        (node.X - self.exX) ** 2 + (node.Y - self.exY) ** 2 + (node.Z - self.exZ) ** 2))

                    new_path = [temp_cost + point[1],temp_future_cost, temp]

                    if not all_path:
                        all_path.insert(0, new_path)
                    else:
                        success = False
                        for i in range(len(all_path)):
                            if all_path[i][0]+all_path[i][1] <= new_path[0]+new_path[1]:
                                all_path.insert(i, new_path)
                                success = True
                                break
                        if not success:
                            all_path.append(new_path)

        return False

    '''
    Get reachable location given the current point index
    '''

    def get_reachable(self, location):
        result = []
        point = self.points[location]
        for directon in point.move:
            reachable = self.move(location, directon)
            result.append(reachable)
        return result

    def move(self, location, direction):
        X, Y, Z = location.split()
        X, Y, Z = int(X), int(Y), int(Z)
        if direction == "1":
            X += 1
        elif direction == "2":
            X -= 1
        elif direction == "3":
            Y += 1
        elif direction == "4":
            Y -= 1
        elif direction == "5":
            Z += 1
        elif direction == "6":
            Z -= 1
        elif direction == "7":
            X += 1
            Y += 1
        elif direction == "8":
            X += 1
            Y -= 1
        elif direction == "9":
            X -= 1
            Y += 1
        elif direction == "10":
            X -= 1
            Y -= 1
        elif direction == "11":
            X += 1
            Z += 1
        elif direction == "12":
            X += 1
            Z -= 1
        elif direction == "13":
            X -= 1
            Z += 1
        elif direction == "14":
            X -= 1
            Z -= 1
        elif direction == "15":
            Y += 1
            Z += 1
        elif direction == "16":
            Y += 1
            Z -= 1
        elif direction == "17":
            Y -= 1
            Z += 1
        elif direction == "18":
            Y -= 1
            Z -= 1

        return str(X) + " " + str(Y) + " " + str(Z)

    '''
    Get reachable location given the current point index
    '''

    def get_reachable_cost(self, location):
        result = []
        point = self.points[location]
        for directon in point.move:
            reachable, cos = self.move_cost(point, directon)
            result.append([reachable, cos])
        return result

    def move_cost(self, point, direction):
        cost = None
        X = point.X
        Y = point.Y
        Z = point.Z
        if direction == "1":
            cost = 10
            X += 1
        elif direction == "2":
            cost = 10
            X -= 1
        elif direction == "3":
            cost = 10
            Y += 1
        elif direction == "4":
            cost = 10
            Y -= 1
        elif direction == "5":
            cost = 10
            Z += 1
        elif direction == "6":
            cost = 10
            Z -= 1
        elif direction == "7":
            cost = 14
            X += 1
            Y += 1
        elif direction == "8":
            cost = 14
            X += 1
            Y -= 1
        elif direction == "9":
            cost = 14
            X -= 1
            Y += 1
        elif direction == "10":
            cost = 14
            X -= 1
            Y -= 1
        elif direction == "11":
            cost = 14
            X += 1
            Z += 1
        elif direction == "12":
            cost = 14
            X += 1
            Z -= 1
        elif direction == "13":
            cost = 14
            X -= 1
            Z += 1
        elif direction == "14":
            cost = 14
            X -= 1
            Z -= 1
        elif direction == "15":
            cost = 14
            Y += 1
            Z += 1
        elif direction == "16":
            cost = 14
            Y += 1
            Z -= 1
        elif direction == "17":
            cost = 14
            Y -= 1
            Z += 1
        elif direction == "18":
            cost = 14
            Y -= 1
            Z -= 1

        return str(X) + " " + str(Y) + " " + str(Z), cost


def form_maze():
    f = open("input.txt", "r")
    alg = f.readline().rstrip()
    dimensions = f.readline().rstrip()
    entrance = f.readline().rstrip()
    exit = f.readline().rstrip()
    N = f.readline().rstrip()
    dic = {}
    for x in f:
        i = x.rstrip().split()
        a = i[0] + " " + i[1] + " " + i[2]
        b = ""
        for number in i[3:]:
            b += number + " "
        dic[a] = Point(a, b)
    maze = Maze(dimensions, entrance, exit, dic, alg)
    return maze


print(time.time())

maze = form_maze()
if maze.algorithm == "BFS":
    path = maze.bfs()
    f = open("output.txt", "w")
    if path is not False:
        steps = int(len(path))
        cost = steps - 1
        f.write(str(cost) + '\n')
        f.write(str(steps) + '\n')
        cost = 0
        for point in path:
            f.write(point + " " + str(cost) + '\n')
            cost = 1
    else:
        f.write("FAIL")

elif maze.algorithm == "UCS":
    path = maze.ucs()
    f = open("output.txt", "w")
    if path is not False:
        cost = path[0]
        steps = int(len(path[1]))
        f.write(str(cost) + '\n')
        f.write(str(steps) + '\n')
        for point in path[1]:
            f.write(point[0] + " " + str(point[1]) + '\n')
    else:
        f.write("FAIL")

elif maze.algorithm == "A*":
    path = maze.A()
    f = open("output.txt", "w")
    if path is not False:
        cost = path[0]
        steps = int(len(path[2]))
        f.write(str(cost) + '\n')
        f.write(str(steps) + '\n')
        for point in path[2]:
            f.write(point[0] + " " + str(point[1]) + '\n')
    else:
        f.write("FAIL")

print(time.time())
