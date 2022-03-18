from queue import Queue

from base import NeighborSolutionLocator
from base.Gate import Gate
from base.MySolution import MySolution
from base.NeighborSolutionLocator import findBestNeighbor, findAmnestyNeighbor
import sys

class TabuSearch:
    threshold = 1000
    p = 0.9

    def __init__(self, tabulist: list, maxIterations: int):
        self.tabulist = tabulist
        self.maxIterations = maxIterations

    def mustStop(self, currentIteration, bestSolutionFound):
        if currentIteration > self.maxIterations:
            print('the search is bounded %s times' %self.maxIterations)
            return True, self.maxIterations
        shortpaths = bestSolutionFound.dist
        currentLayers = bestSolutionFound.currentLayers
        i = 0
        while i < len(currentLayers):
            q1 = currentLayers[i].control
            q2 = currentLayers[i].target
            l1 = bestSolutionFound.locations[q1]
            l2 = bestSolutionFound.locations[q2]
            paths = shortpaths[l1][l2].distance

            if paths > 3:
                return False, currentIteration
            else:
                g = Gate()
                g.type = currentLayers[i].type
                g.control = l1
                g.target = l2
                bestSolutionFound.circuits.append(g)
                del currentLayers[i]

        return True, currentIteration

    def run(self, initialSolution, type, delta, system:str):
        bestSolution = initialSolution
        currentIteration = 0
        run,it=self.mustStop(currentIteration, bestSolution)
        while (not run) and it<self.maxIterations:
            candidateNeighbors = list(bestSolution.getNeighbors(type,delta,system))
            solutionsInTabu = self.tabulist
            bestneighborfound = findBestNeighbor(candidateNeighbors, solutionsInTabu,type)
            if bestneighborfound == None:
                neighbor = bestSolution.getNeighbors(type, delta,system)
                if neighbor == None or len(neighbor) <= 0:
                    break
                else:
                    bestneighborfound = findAmnestyNeighbor(
                        neighbor, solutionsInTabu,type)
            if len(self.tabulist)>=3:
                self.tabulist.pop(0)
            self.tabulist.append(bestSolution.swapped_edge)
            bestSolution = MySolution(graph=bestneighborfound.graph, dist=bestneighborfound.dist,locations=bestneighborfound.locations,qubits=bestneighborfound.qubits, currentLayers=bestneighborfound.currentLayers,nextLayers_1=bestneighborfound.nextLayers_1)
            bestSolution.circuits = bestneighborfound.circuits
            bestSolution.swaps = bestneighborfound.swaps
            bestSolution.score = bestneighborfound.score
            bestSolution.subscore = bestneighborfound.subscore
            bestSolution.swapped_edge = bestneighborfound.swapped_edge

            # bestSolution=bestneighborfound
            # currentSolution =bestSolution
            currentIteration+=1
            run, it = self.mustStop(currentIteration, bestSolution)
        run, it = self.mustStop(currentIteration, bestSolution)
        if run and it < self.maxIterations:
            return bestSolution
        print('iteration times %s',it)
        return None
