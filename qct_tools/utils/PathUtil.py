from queue import Queue

from base.Edge import Edge
from base.PathResult import PathResult
from base.ShortPath import ShortPath


class PathUtil:
    def __init__(self,position:int):
        self.position =position
    def bfsForTabu(self,startindex:int, goal:int, graph: set):
        reslut = ShortPath()
        solutions = []
        edges = []
        queue = []
        v = []
        v.append(startindex)
        queue.append(v)
        length = 0
        successors = []
        while len(queue)>0:
            v = queue[0]
            queue.pop(0)
            current = v[len(v) - 1]
            if current == goal:
                length = len(v)
                solutions.append(v)
                break
            else:
                successors.clear()
                it = iter(graph)
                for e in it:
                    if e.source == current and not (e.target in v) and not (e.target in successors):
                        successors.append(e.target)
                    if e.target == current and not (e.source in v) and not (e.source in successors):
                        successors.append(e.source)
                # successors = sorted(successors)
                su = iter(successors)
                for succ in su:
                    v2 = list(v)
                    v2.append(succ)
                    queue.append(v2)
        # while len(queue) > 0:
        while len(queue) > 0 and len(queue[0]) == length:
            if queue[0][len(queue[0]) - 1] == goal:
                solutions.append(queue[0])
            queue.pop(0)
        for i in range(len(solutions)):
            v1 = solutions[i]
            e1 = []
            for j in range(len(v1) - 1):
                e = Edge()
                e.source = v1[j]
                e.target = v1[j + 1]
                e1.append(e)
            edges.append(e1)
        reslut.distance = (length - 1) * 3
        reslut.paths = edges
        return reslut

        pass

    def build_dist_table_tabu(self, graph: set):
        dist = [[0] * self.position for i in range(self.position)]
        for i in range(self.position):
            for j in range(self.position):
                if i != j:
                    dist[i][j] = self.bfsForTabu(i, j, graph)
                else:
                    dist[i][i] = ShortPath()
        return dist
    def build_graph_QX20(self):
        reslut=PathResult()
        degree=[0]*self.position
        for i in range(self.position):
            reslut.degrees=degree
            graph=set()
            reslut.graph=graph
            graph.clear()
            for i in range(0, 4):
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 1
                e2.source = i + 1
                e2.target = i
                degree[i]+=1
                j=i+1
                degree[j]+=1
                graph.add(e1)
                graph.add(e2)

            for i in range(5, 9):
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 1
                e2.source = i + 1
                e2.target = i
                degree[i] += 1
                j = i + 1
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)

            for i in range(10, 14):
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 1
                e2.source = i + 1
                e2.target = i
                degree[i] += 1
                j = i + 1
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)

            for i in range(15, 19):
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 1
                e2.source = i + 1
                e2.target = i
                degree[i] += 1
                j = i + 1
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)

            for i in range(0, 15):
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 5
                e2.source = i + 5
                e2.target = i
                degree[i] += 1
                j = i + 1
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)

            for i in [1, 3, 5, 7, 11, 13]:
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 6
                e2.source = i + 6
                e2.target = i
                degree[i] += 1
                j = i + 6
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)

            for i in [2, 4, 6, 8, 12, 14]:
                e1 = Edge()
                e2 = Edge()
                e1.source = i
                e1.target = i + 4
                e2.source = i + 4
                e2.target = i
                degree[i] += 1
                j = i + 4
                degree[j] += 1
                graph.add(e1)
                graph.add(e2)
        return reslut

    def build_graph_Sycamore(self):
        reslut = PathResult()
        degree = [0] * self.position
        reslut.degrees = degree
        graph = set()
        reslut.graph = graph
        graph.clear()
        for i in range(0, 3):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 5
            e2.source = i + 5
            e2.target = i
            degree[i] += 1
            j = i + 5
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(3, 5):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(5, 10):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 7
            e2.source = i + 7
            e2.target = i
            degree[i] += 1
            j = i + 7
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(11, 17):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(17, 22):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 7
            e2.source = i + 7
            e2.target = i
            degree[i] += 1
            j = i + 7
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(23, 29):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(29, 34):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 7
            e2.source = i + 7
            e2.target = i
            degree[i] += 1
            j = i + 7
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(35, 41):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(41, 46):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 7
            e2.source = i + 7
            e2.target = i
            degree[i] += 1
            j = i + 7
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(1, 3):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 4
            e2.source = i + 4
            e2.target = i
            degree[i] += 1
            j = i + 4
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(3, 5):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 5
            e2.source = i + 5
            e2.target = i
            degree[i] += 1
            j = i + 5
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(5, 11):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(12, 17):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 5
            e2.source = i + 5
            e2.target = i
            degree[i] += 1
            j = i + 5
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(17, 23):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(24, 29):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 5
            e2.source = i + 5
            e2.target = i
            degree[i] += 1
            j = i + 5
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(29, 35):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(36, 41):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 5
            e2.source = i + 5
            e2.target = i
            degree[i] += 1
            j = i + 5
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)
        for i in range(41, 47):
            e1 = Edge()
            e2 = Edge()
            e1.source = i
            e1.target = i + 6
            e2.source = i + 6
            e2.target = i
            degree[i] += 1
            j = i + 6
            degree[j] += 1
            graph.add(e1)
            graph.add(e2)

        return reslut
# p = PathUtil(54)
# syc = p.build_graph_Sycamore()
# syc.graph = sorted(syc.graph, key=lambda k: k.source)
# print('t 53 %s' % (len(syc.graph)))
# for i in range(54):
#     if i >3:
#         print('v %s 0 %s' % (i-1, syc.degrees[i]))
#     elif i<3:
#         print('v %s 0 %s' % (i, syc.degrees[i]))
# # for i in range(54):
# #     print('e %s %s' % (i, i+1))
# for i in syc.graph:
#     if i.source>3 and i.target>3:
#         print('e %s %s' % (i.source-1, i.target-1))
#     elif i.source<3 and i.target<3:
#         print('e %s %s' % (i.source, i.target))
#     elif i.source>3 and i.target<3:
#         print('e %s %s' % (i.source-1, i.target))
#     elif i.source<3 and i.target>3:
#         print('e %s %s' % (i.source, i.target-1))


p = PathUtil(53)
syc = p.build_graph_Sycamore()
syc.graph = sorted(syc.graph, key=lambda k: k.source)
print('t 53 %s' % (len(syc.graph)))
for i in range(53):
        print('v %s 0 %s' % (i, syc.degrees[i]))
# for i in range(54):
#     print('e %s %s' % (i, i+1))
for i in syc.graph:
        print('e %s %s' % (i.source, i.target))