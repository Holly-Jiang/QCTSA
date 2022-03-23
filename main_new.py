# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import math
import os, sys, math


# Press the green button in the gutter to run the script.
from qct_tools.utils.FileUtils import FileUtils
def read_fidls_syc_files(path):
    if path=='':
        print('the path \'%s\' is not exist'%path)
    map=dict()
    f = open(path, "r")
    while True:
        line = f.readline().strip()
        if line.startswith('****************************') or (not line) or line.__eq__('') :
            line = f.readline()
            break

    while True:
        line = f.readline().strip()
        if (not line) or line.__eq__('')  or (not line.startswith('(')):
            break
        list1=list()
        arr=line.split('(')[1].split(')')[0].split(',')
        for i in range(2,len(arr)):
                list1.append(float(arr[i]))
        map['%s'%arr[1].strip()[1:len(arr[1])-2]]=list1
    return map

def read_tabu_files(path):
    if path == '':
        print('the path \'%s\' is not exist' % path)
    map = dict()
    f = open(path, "r")
    while True:
        str = f.readline().strip()
        line = f.readline().strip()
        if not line:
            break
        if line.__eq__(''):
            break
        list1 = list()
        arr = line.split(' ')
        for i in range(len(arr)):
            if i > 0:
                list1.append(float(arr[i]))
            else:
                list1.append(arr[i])
        map['%s' % str] = list1
    return map


def read_tabu_files1(path):
    if path == '':
        print('the path \'%s\' is not exist' % path)
    map = dict()
    f = open(path, "r")
    while True:
        str = f.readline().strip()
        line = f.readline().strip()
        if not line:
            break
        if line.__eq__(''):
            break
        list1 = list()
        arr = line.split(' ')
        for i in range(len(arr)):
            list1.append(float(arr[i]))
        map['%s' % str] = list1
    return map


def read_sabre_files(path):
    map = dict()
    f = open(path, "r")
    res = list()
    while True:
        str = f.readline().strip()
        line = f.readline().strip()
        if not line:
            break
        if line.__eq__(''):
            break
        list1 = list()
        arr = line.split(' ')
        list1.append(float(arr[0]))
        list1.append(float(arr[1]))
        list1.append(float(arr[2]))
        if float(arr[2])>3600 and float(arr[2])!=9999999:
            print(str,line)
        map[str] = list1
    return map


def readOptm(path):
    map = dict()
    f = open(path, "r")
    res = list()
    key = ''
    while True:
        line = f.readline().strip()
        if not line:
            break
        if line.__eq__(''):
            break
        list1 = list()
        arr = line.split(' ')
        if len(arr) == 4:
            list1.append(float(arr[0]))
            list1.append(float(arr[1]))
            list1.append(float(arr[2]))
            list1.append(float(arr[3]))
            res.append(list1)
        elif len(arr) == 5:
            list1.append(float(arr[0]))
            list1.append(float(arr[1]))
            list1.append(float(arr[2]))
            list1.append(float(arr[3]))
            list1.append(float(arr[4]))
            res.append(list1)
        else:
            if (res != None and len(res) > 0):
                map[key] = res
                res = list()
            key = line
    return map


def read_topgraph_files(path):
    if path == '':
        print('the path \'%s\' is not exist' % path)
    map = dict()
    f = open(path, "r")
    while True:
        str = f.readline().strip()
        line = f.readline().strip()
        if not line:
            break
        if line.__eq__(''):
            break
        list1 = list()
        arr = line.split(' ')
        if not float(arr[0]).__eq__(9999999):
            list1.append(float(arr[0]))
            list1.append(float(arr[1]))
            map['%s' % str] = list1
    return map


def selectTheBestResultFromFiles(path):
    files = os.listdir(path)
    mingatesum = 999999999
    mingatename = ''
    for file in files:
        map = read_tabu_files('%s/%s' % (path, file))
        gatesum = 0
        it1 = map.keys()
        # if len(it1)!=159:
        #     continue
        for k1 in it1:
            gatesum += map.get(k1)[5]
        if gatesum < mingatesum:
            mingatesum = gatesum
            mingatename = file
        # print('%s %s %s %f'%(file,file[30:],file[19:23], math.log(gatesum,10)))
        print('%s %d' % (file, gatesum))
    print("the minimal file is [[%s]], consisting of [[%d]] gates. " % (mingatename, mingatesum))

def generateForwDelta(files,names):
    mingatesum = 999999999
    mingatename = ''
    out=list()
    for i in range(len(files)):
        map = read_tabu_files(files[i])
        gatesum = 0
        it1 = map.keys()
        # if len(it1)!=159:
        #     continue
        for k1 in it1:
            gatesum += map.get(k1)[5]
        if gatesum < mingatesum:
            mingatesum = gatesum
            mingatename = files[i]
        print('%s %s %s %f'%(names[i],names[i][30:],names[i][19:23], math.log(gatesum,10)))
    print("the minimal file is [[%s]], consisting of [[%d]] gates. " % (mingatename, mingatesum))
def selectTheMinimalDepthFromFiles(files, name, exam):
    po = open(name, "w")
    res = dict()
    mapu = read_tabu_files(exam)
    it = mapu.keys()
    gatesum = 0
    count = 0
    print(
        '[Minimal mapping index] [Number of 2-qubit gates of the initial circuit]  [Depth of the generated circuit] \n[Number of SWAP inserted] [Number of look-ahead layers] [Attenuation factor] [Runtime] ')
    for k in it:
        res['%s' % k] = mapu.get(k)
        for file in files:
            map = read_tabu_files(file)
            it1 = map.keys()
            for k1 in it1:
                if k1.__eq__(k):
                    if res['%s' % k][4] > map.get(k1)[4]:
                        res['%s' % k] = map.get(k1)
                    break

        if res['%s' % k][4] != 999999999:
            gatesum += res['%s' % k][4]
            key = '%s' % k
            print(count, key)
            count += 1
            po.write('%s\n' % k)
            for i in range(len(res[key])):
                print('%s ' % res[key][i], end=' ')
                po.write('%s ' % res[key][i])
            print()
            po.write('\n')
    po.flush()
    po.close()
    print("the minimal file  [[%s]], depth: %d " % (name, gatesum))



def selectTheMinimalGatesFromFiles(files, name, exam):
    po = open(name, "w")
    res = dict()
    mapu = read_tabu_files(exam)
    it = mapu.keys()
    gatesum = 0
    count = 0
    print(
        '[Minimal mapping index] [Number of gates of the initial circuit]  [Depth of the generated circuit] \n[Number of SWAP inserted] [Runtime] ')
    for k in it:
        res['%s' % k] = mapu.get(k)
        for file in files:
            # print(file)
            map = read_tabu_files(file)
            it1 = map.keys()
            for k1 in it1:
                if k1.__eq__(k):
                    if res['%s' % k][5] > map.get(k1)[5]:
                        res['%s' % k] = map.get(k1)
                        break
        if res['%s' % k][5] != 999999999:
            gatesum += res['%s' % k][5]
            key = '%s' % k
            print(count, key)
            count += 1
            po.write('%s\n' % k)
            for i in range(len(res[key])):
                print('%s ' % res[key][i], end=' ')
                po.write('%s ' % res[key][i])
            print()
            po.write('\n')
    po.flush()
    po.close()
    print("the minimal file  [[%s]] consists of %d gates " % (name, gatesum))


def generateMaximal(exam):
    res = dict()
    mapu = read_tabu_files(exam)
    it = mapu.keys()
    c = 0
    m = ''
    for i in it:

        mapu.get(i)[5]=mapu.get(i)[5]*3
        # if mapu.get(i)[8] > c:
        #     c = mapu.get(i)[2]
        #     m = i
        if  mapu.get(i)[2]+ mapu.get(i)[5]!= mapu.get(i)[3]:
            print('00000000000000')
            sys.exit(-1)
        print(i)
        print('%s %s %s %s %s %s %s %s %s'%(mapu.get(i)[0],mapu.get(i)[1],mapu.get(i)[2],mapu.get(i)[3],mapu.get(i)[4],mapu.get(i)[5],mapu.get(i)[6],mapu.get(i)[7],mapu.get(i)[8]))
def generateCharts(file):
    print('name ini num')
    mapu = read_tabu_files(file)
    it = mapu.keys()
    out=list()
    for k in it:
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' %k,20)
        l = fileResult.n2gates
        o1=list()
        if  mapu.get(k)[5]!=0:
            # print('%s %s %s'%(k, mapu.get(k)[2],mapu.get(k)[5]))
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(math.log10(float(mapu.get(k)[5])))
            out.append(o1)
            # print('%s %s %s'%(k, math.log10(l),math.log10(float(mapu.get(k)[5]))))
        else:
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(0)
            out.append(o1)
            # print('%s %s %s' % (k, math.log10(l), 0))
    out=sorted(out,key=(lambda s:(s[1],s[0])))
    for i in range(len(out)):
        print('%s %s %s' % (out[i][0], out[i][1], out[i][2]))
def generateSabreCharts(file):
    print('name ini num')
    mapu = read_sabre_files(file)
    it = mapu.keys()
    out=list()
    for k in it:
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' %k, 20)
        l = fileResult.n2gates
        o1=list()
        if  mapu.get(k)[1]!=0:
            # print('%s %s %s'%(k, mapu.get(k)[2],mapu.get(k)[5]))
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(math.log10(float(mapu.get(k)[1])))
            out.append(o1)
            # print('%s %s %s'%(k, math.log10(l),math.log10(float(mapu.get(k)[5]))))
        else:
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(0)
            out.append(o1)
            # print('%s %s %s' % (k, math.log10(l), 0))
    out=sorted(out,key=(lambda s:(s[1],s[0])))
    for i in range(len(out)):
        print('%s %s %s' % (out[i][0], out[i][1], out[i][2]))

def generatefidslCharts(file):
    print('name ini num')
    mapu = read_topgraph_files(file)
    it = mapu.keys()
    out=list()
    for k in it:
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' %k, 20)
        l = fileResult.n2gates
        o1=list()
        if  mapu.get(k)[1]!=0:
            # print('%s %s %s'%(k, mapu.get(k)[2],mapu.get(k)[5]))
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(math.log10(float(mapu.get(k)[1]*3)))
            out.append(o1)
            # print('%s %s %s'%(k, math.log10(l),math.log10(float(mapu.get(k)[5]))))
        else:
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(0)
            out.append(o1)
            # print('%s %s %s' % (k, math.log10(l), 0))
    out=sorted(out,key=(lambda s:(s[1],s[0])))
    for i in range(len(out)):
        print('%s %s %s' % (out[i][0], out[i][1], out[i][2]))

def generateGACharts(file):
    print('name ini num')
    mapu = readOptm(file)

    it = mapu.keys()
    out=list()
    count=0
    for k in it:
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' %k, 20)
        l = fileResult.n2gates
        o1=list()
        if mapu.get(k)[3][3] == 9999999:
            continue
        count+=1
        if  mapu.get(k)[3][3]!=0:
            # print('%s %s %s'%(k, mapu.get(k)[2],mapu.get(k)[5]))
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(math.log10(float(mapu.get(k)[3][3]*3)))
            out.append(o1)
            # print('%s %s %s'%(k, math.log10(l),math.log10(float(mapu.get(k)[5]))))
        else:
            o1.append(k)
            o1.append(math.log10(l))
            o1.append(0)
            out.append(o1)
            # print('%s %s %s' % (k, math.log10(l), 0))
    out=sorted(out,key=(lambda s:(s[1],s[0])))
    for i in range(len(out)):
        print('%s %s %s' % (out[i][0], out[i][1], out[i][2]))
    print(count)
# mini ./results/qct/  ./results/test/tsa
def caculateTheAdjustTSA():
    print('_________________________comparison of <*_TSA_num>______________________')
    fcca = "./results/data/tsa/fidsl_tsa"
    fidslcca = read_tabu_files(fcca)
    tcca = "./results/data/tsa/tsa"
    tsacca = read_tabu_files(tcca)
    occa = "./results/data/tsa/ga_tsa"
    optmcca = read_tabu_files(occa)
    sabrestr = "./results/data/tsa/sabre_tsa"
    sabremap = read_tabu_files(sabrestr)
    names = list()
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None:
            names.append(k)
        elif optmcca.get(k) == None:
            names.append(k)
        elif sabremap.get(k) == None:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[5]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[5]
        optm = optmcca.get(k)
        ori += tsacca.get(k)[2]
        optmgate += optm[5]
        sab = sabremap.get(k)
        sabregate += sab[5]
    print("number of case:", len(tsacca), "ORI: ", ori, "GA: ", optmgate, "SABRE: ", sabregate,
          "FiDSL: ", fidslgate, "TSA_num: ", tsagate)
    print("GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' % (((optmgate - tsagate + 0.0) / optmgate+(sabregate - tsagate + 0.0) / sabregate  +(fidslgate - tsagate + 0.0) / fidslgate) / 3))
def caculateTheAdjustTSA_QX20():
    print('_________________________comparison of <*_TSA_num_QX20>______________________')
    fcca = "./results/data/tsa/fidls_tsa_q20"
    fidslcca = read_tabu_files(fcca)
    tcca = "./results/data/tsa/tsa"
    tsacca = read_tabu_files(tcca)
    occa = "./results/data/tsa/ga_tsa"
    optmcca = read_tabu_files(occa)
    sabrestr = "./results/data/tsa/sabre_tsa"
    sabremap = read_tabu_files(sabrestr)
    names = list()
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None:
            names.append(k)
        elif optmcca.get(k) == None:
            names.append(k)
        elif sabremap.get(k) == None:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[5]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[5]
        optm = optmcca.get(k)
        ori += tsacca.get(k)[2]
        optmgate += optm[5]
        sab = sabremap.get(k)
        sabregate += sab[5]
    print("number of case:", len(tsacca), "ORI: ", ori, "GA: ", optmgate, "SABRE: ", sabregate,
          "FiDSL: ", fidslgate, "TSA_num: ", tsagate)
    print("GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' % (((optmgate - tsagate + 0.0) / optmgate+(sabregate - tsagate + 0.0) / sabregate  +(fidslgate - tsagate + 0.0) / fidslgate) / 3))


def caculateTheAdjustTSA_sycamore():
    print('_________________________comparison of <*_TSA_num_Sycamore>______________________')
    fcca = "./results/data/tsa_sycamore/fidls_tsa"
    fidslcca = read_tabu_files(fcca)
    tcca = "./results/data/tsa_sycamore/tsa"
    tsacca = read_tabu_files(tcca)
    names = list()
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[5]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[5]
        ori += tsacca.get(k)[2]
    print("number of case:", len(tsacca), "ORI: ", ori,
          "FiDSL: ", fidslgate, "TSA_num: ", tsagate)
    print("FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
def caculateTheAdjustCCA():
    print('_________________________comparison of <*_TSA_cca>______________________')
    fcca = "./results/data/cca/fidsl_cca"
    fidslcca = read_tabu_files(fcca)
    tcca = "./results/data/cca/tsa_cca"
    tsacca = read_tabu_files(tcca)
    occa = "./results/data/cca/ga_cca"
    optmcca = read_tabu_files(occa)
    sabrestr = "./results/data/cca/sabre_cca"
    sabremap = read_tabu_files(sabrestr)
    names = list()
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None:
            names.append(k)
        elif optmcca.get(k) == None:
            names.append(k)
        elif sabremap.get(k) == None:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]

    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[5]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[5]
        optm = optmcca.get(k)
        ori += tsacca.get(k)[2]
        optmgate += optm[5]
        sab = sabremap.get(k)
        sabregate += sab[5]

    print("number of case: ", len(tsacca), "ORI: ", ori, ", GA: ", optmgate, ", SABRE: ", sabregate,
          ", FiDSL: ", fidslgate, ", TSA_cca: ", tsagate)
    print("(GA-TSA_cca)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_cca)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_cca)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' % (((optmgate - tsagate + 0.0) / optmgate+(sabregate - tsagate + 0.0) / sabregate  +(fidslgate - tsagate + 0.0) / fidslgate) / 3))

def caculateTheAdjustOptm():
    print('_________________________comparison of <*_GA>______________________')
    sabreoptm = "./results/data/optm/sabre_optm"
    sabremap = read_sabre_files(sabreoptm)
    fidlsoptm = "./results/data/optm/FiDLS_GA"
    fidlsmap = read_sabre_files(fidlsoptm)
    optmStr = "./results/data/optm/total_A_ini_connect"
    optmmap = readOptm(optmStr)
    optmStr1 = "./results/data/optm/GA_num"
    optmmap1 = readOptm(optmStr1)
    tsamap = read_tabu_files("./results/data/tsa/tsa")

    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    count = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        optm = optmmap.get(k)
        optm1 = optmmap1.get(k)
        if  optm[3][3] != 9999999 and optm1[1][3] != 9999999 and sabremap.get(k)[
            1] != 9999999 and fidlsmap.get(k)!=None and fidlsmap.get(k)[
            1] != 9999999:
            count += 1
            ori += tsamap.get(k)[2]
            tsagate += optm[3][3] * 3
            fidslgate += fidlsmap.get(k)[2] * 3
            optmgate += optm1[1][3] * 3
            sabregate += sabremap.get(k)[2] * 3
    print("number of case: ", count, "ORI: ", ori, ", GA: ", optmgate, ", SABRE: ", sabregate, ", FiDSL: ", fidslgate,
          ", TSA_num: ", tsagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s'%(((optmgate - tsagate + 0.0) / optmgate+(sabregate - tsagate + 0.0) / sabregate+(fidslgate - tsagate + 0.0) / fidslgate)/3))

def caculateTheAdjustFiDSL_QX20():
    print('_________________________comparison of <*_FiDSL_QX20>______________________')
    fcca = "./results/data/fidls_qx20/top_fidls"
    fidslcca = read_fidls_syc_files(fcca)
    tcca = "./results/data/fidls_qx20/tsa_fidls"
    tsacca = read_fidls_syc_files(tcca)
    occa = "./results/data/fidls_qx20/ga_fidls"
    optmcca = read_fidls_syc_files(occa)
    sabre = "./results/data/fidls_qx20/sabre_fidls"
    sabremap = read_fidls_syc_files(sabre)
    names = list()

    tsamap = read_tabu_files("./results/data/tsa/tsa")
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None or fidslcca.get(k)[1] == 9999999:
            names.append(k)
        elif optmcca.get(k) == None or optmcca.get(k)[1] == 9999999:
            names.append(k)
        elif sabremap.get(k) == None or sabremap.get(k)[1] == 9999999:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[3]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[3]
        optm = optmcca.get(k)
        ori += tsamap.get(k)[3]
        optmgate += optm[3]
        sab = sabremap.get(k)
        sabregate += sab[3]
    print("number of case: ", len(tsacca), "ORI: ",ori,
          ", GA: ", optmgate,  ", SABRE: ", sabregate, ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' %((( optmgate - tsagate + 0.0) / optmgate+ (sabregate - tsagate + 0.0) / sabregate +(fidslgate - tsagate + 0.0) / fidslgate )/3))
def caculateTheAdjustFiDSL_Sycamore():
    print('_________________________comparison of <*_FiDSL_Sycamore>______________________')
    fcca = "./results/data/fidls_sycamore/top_fidls"
    fidslcca = read_fidls_syc_files(fcca)
    tcca = "./results/data/fidls_sycamore/tsa_fidls"
    tsacca = read_fidls_syc_files(tcca)
    names = list()

    tsamap = read_tabu_files("./results/data/tsa/tsa")
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None or fidslcca.get(k)[1] == 9999999:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[3]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[3]
        ori += tsamap.get(k)[3]
    print("number of case: ", len(tsacca), "ORI: ",ori, "FiDSL: ", fidslgate, ", TSA_num: ", tsagate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)


def caculateTheAdjustFiDSL():
    print('_________________________comparison of <*_FiDSL>______________________')
    fcca = "./results/data/fidsl/fidsl"
    fidslcca = read_topgraph_files(fcca)
    tcca = "./results/data/fidsl/tsa_fidsl"
    tsacca = read_topgraph_files(tcca)
    occa = "./results/data/fidsl/optm_fidsl"
    optmcca = read_topgraph_files(occa)
    sabre = "./results/data/fidsl/sabre_fidsl"
    sabremap = read_topgraph_files(sabre)
    names = list()

    tsamap = read_tabu_files("./results/data/tsa/tsa")
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None or fidslcca.get(k)[1] == 9999999:
            names.append(k)
        elif optmcca.get(k) == None or optmcca.get(k)[1] == 9999999:
            names.append(k)
        elif sabremap.get(k) == None or sabremap.get(k)[1] == 9999999:
            names.append(k)
    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[1] * 3
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[1] * 3
        optm = optmcca.get(k)
        ori += tsamap.get(k)[2]
        optmgate += optm[1] * 3
        sab = sabremap.get(k)
        sabregate += sab[1] * 3
    print("number of case: ", len(tsacca), "ORI: ",ori,
          ", GA: ", optmgate,  ", SABRE: ", sabregate, ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' %((( optmgate - tsagate + 0.0) / optmgate+ (sabregate - tsagate + 0.0) / sabregate +(fidslgate - tsagate + 0.0) / fidslgate )/3))

def caculateTheAdjustSABRE():
    print('_________________________comparison of <*_SABRE>______________________')
    fcca = "./results/data/sabre/fidsl_sabre"
    fidslcca = read_sabre_files(fcca)
    tcca = "./results/data/sabre/tsa_sabre"
    tsacca = read_sabre_files(tcca)
    occa = "./results/data/sabre/optm_sabre"
    optmcca = read_sabre_files(occa)
    sabre = "./results/data/sabre/sabre"
    sabremap = read_sabre_files(sabre)

    tsamap = read_tabu_files("./results/data/tsa/tsa")
    names = list()
    it = tsacca.keys()
    for k in it:
        if fidslcca.get(k) == None or fidslcca.get(k)[1] == 9999999:
            names.append(k)
        elif optmcca.get(k) == None or optmcca.get(k)[1] == 9999999:
            names.append(k)
        elif sabremap.get(k) == None or sabremap.get(k)[1] == 9999999:
            names.append(k)

    for i in range(len(names)):
        del tsacca[names[i]]
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsacca.keys()
    for k in it:
        tsagate += tsacca.get(k)[1]
        fidsltsa = fidslcca.get(k)
        fidslgate += fidsltsa[1]
        optm = optmcca.get(k)
        ori += tsamap.get(k)[2]
        optmgate += optm[1]
        sab = sabremap.get(k)
        sabregate += sab[1]
    print("number of case: ", len(tsacca), "ORI: ", ori,
          ", GA: ", optmgate, ", SABRE: ", sabregate, ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print('average: %s' % ((((optmgate - tsagate + 0.0) / optmgate + (sabregate - tsagate + 0.0) / sabregate + (fidslgate - tsagate + 0.0) / fidslgate ) / 3)))
def caculateFiDSL_QX20():
    print('________________comparison of <FiDSL_*_QX20>__________________')
    topgraph = "./results/data/fidls_qx20/top_fidls"
    fidslmap = read_fidls_syc_files(topgraph)
    optmStr = "./results/data/optm/FiDLS_GA"
    optmmap = read_sabre_files(optmStr)
    # optmStr1 = "./results/data/optm/GA_num"
    # optm_result1 = readOptm(optmStr1)
    # optmStr = "./results/data/optm/sabre_optm"
    # optmmap = read_sabre_files(optmStr)
    sabrestr = "./results/data/sabre/fidsl_sabre"
    sabremap = read_sabre_files(sabrestr)
    count = 0
    tsamap = read_tabu_files("./results/data/tsa/fidls_tsa_q20")
    ccamap = read_tabu_files("./results/data/cca/fidsl_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[2] == 9999999):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[3] == 9999999:
            names.append(k)
        # if optmmap.get(k) == None or optmmap.get(k)[1]==9999999:
        #     names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] == 9999999:
            names.append(k)

    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]

    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[3]
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[2] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]
    print("number of case: ", len(tsamap),'ori:',ori,
          "GA: ", optmgate, "SABRE: ", sabregate, "FiDSL: ", fidslgate, "TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)
def caculateFiDSL_Sycamore():
    print('________________comparison of <FiDSL_*_sycamore>__________________')
    topgraph = "./results/data/fidls_sycamore/top_fidls"
    fidslmap = read_fidls_syc_files(topgraph)
    count = 0
    tsamap = read_fidls_syc_files("./results/data/fidls_sycamore/tsa_fidls")
    # ccamap = read_tabu_files("./results/data/cca/fidsl_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if fidslmap.get(k) == None or fidslmap.get(k)[1] == 9999999:
            names.append(k)

    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]

    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[3]
        fidslgate += fidslmap.get(k)[3]
        ori += tsamap.get(k)[1]
        # ccagate += ccamap.get(k)[5]
    print("number of case: ", len(tsamap),'ori:',ori, "FiDSL: ", fidslgate, "TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    # print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)

def caculateFiDSL_():
    print('________________comparison of <FiDSL_*>__________________')
    topgraph = "./results/data/fidsl/fidsl"
    fidslmap = read_topgraph_files(topgraph)
    optmStr = "./results/data/optm/total_A_ini_connect"
    optmmap = readOptm(optmStr)
    # optmStr1 = "./results/data/optm/GA_num"
    # optm_result1 = readOptm(optmStr1)
    # optmStr = "./results/data/optm/sabre_optm"
    # optmmap = read_sabre_files(optmStr)

    sabrestr = "./results/data/sabre/fidsl_sabre"
    sabremap = read_sabre_files(sabrestr)
    count = 0
    tsamap = read_tabu_files("./results/data/tsa/fidsl_tsa")
    ccamap = read_tabu_files("./results/data/cca/fidsl_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[2][3] == 9999999):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[1] == 9999999:
            names.append(k)
        # if optmmap.get(k) == None or optmmap.get(k)[1]==9999999:
        #     names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] == 9999999:
            names.append(k)

    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]

    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[1] * 3
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[2][3] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]
    print("number of case: ", len(tsamap),'ori:',ori,
          "GA: ", optmgate, "SABRE: ", sabregate, "FiDSL: ", fidslgate, "TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)


def caculateTSA_():
    print('________________comparison of <TSA_*>__________________')
    topgraph = "./results/data/fidsl/tsa_fidsl"
    fidslmap = read_topgraph_files(topgraph)
    optmStr = "./results/data/optm/total_A_ini_connect"
    optmmap = readOptm(optmStr)

    sabrestr = "./results/data/sabre/tsa_sabre"
    sabremap = read_sabre_files(sabrestr)
    tsamap = read_tabu_files("./results/data/tsa/tsa")
    ccamap = read_tabu_files("./results/data/cca/tsa_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[3][3] - 9999999 == 0):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[1] - 9999999 == 0:
            names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] - 9999999 == 0:
            names.append(k)
    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]
    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[1] * 3
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[3][3] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]
    print("number of case: ", len(tsamap), "ori: ", ori, ", GA: ", optmgate, ", SABRE: ", sabregate,
          ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)

def caculateTSA_Sycamore():
    print('________________comparison of <TSA_*_sycamore>__________________')
    topgraph = "./results/data/fidls_sycamore/tsa_fidls"
    fidslmap = read_fidls_syc_files(topgraph)
    tsamap = read_tabu_files("./results/data/tsa_sycamore/tsa")
    # ccamap = read_tabu_files("./results/data/cca/tsa_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if fidslmap.get(k) == None or fidslmap.get(k)[1] - 9999999 == 0:
            names.append(k)
    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]
    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[3]
        ori += tsamap.get(k)[2]
    print("number of case: ", len(tsamap), "ori: ", ori,
          ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate, ", TSA_cca: ", ccagate)

    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    # print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)


def caculateTSA_QX20():
    print('________________comparison of <TSA_*QX20>__________________')
    topgraph = "./results/data/fidls_qx20/tsa_fidls"
    fidslmap = read_fidls_syc_files(topgraph)
    optmStr = "./results/data/optm/total_A_ini_connect"
    optmmap = readOptm(optmStr)

    sabrestr = "./results/data/sabre/tsa_sabre"
    sabremap = read_sabre_files(sabrestr)
    tsamap = read_tabu_files("./results/data/tsa/tsa")
    ccamap = read_tabu_files("./results/data/cca/tsa_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[3][3] - 9999999 == 0):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[1] - 9999999 == 0:
            names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] - 9999999 == 0:
            names.append(k)
    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]
    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[3]
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[3][3] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]
    print("number of case: ", len(tsamap), "ori: ", ori, ", GA: ", optmgate, ", SABRE: ", sabregate,
          ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)
def caculateOptm_():
    print('________________comparison of <GA_*>__________________')
    topgraph = "./results/data/fidsl/optm_fidsl"
    fidslmap = read_topgraph_files(topgraph)
    optmStr = "./results/data/optm/total_A_ini_connect"
    optmmap = readOptm(optmStr)
    sabrestr = "./results/data/sabre/optm_sabre"
    sabremap = read_sabre_files(sabrestr)
    tsamap = read_tabu_files("./results/data/tsa/ga_tsa")
    ccamap = read_tabu_files("./results/data/cca/ga_cca")
    names = list()
    it = tsamap.keys()
    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[1][3] - 9999999 == 0):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[1] - 9999999 == 0:
            names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] - 9999999 == 0:
            names.append(k)
    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]
    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[1] * 3
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[1][3] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]

    print("number of case: ", len(tsamap), "ori: ", ori, ", GA: ", optmgate, ", SABRE: ", sabregate,
          ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate, ", TSA_cca: ", ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)


def caculateSABRE_():
    print('________________comparison of <SABRE_*>__________________')
    topgraph = "./results/data/fidsl/sabre_fidsl"
    fidslmap = read_topgraph_files(topgraph)
    optmStr = "./results/data/optm/sabre_optm"
    optmmap = read_sabre_files(optmStr)
    sabrestr = "./results/data/sabre/sabre"
    sabremap = read_sabre_files(sabrestr)
    tsamap = read_tabu_files("./results/data/tsa/sabre_tsa")
    ccamap = read_tabu_files("./results/data/cca/sabre_cca")
    names = list()
    it = tsamap.keys()

    for k in it:
        if (optmmap.get(k) == None or optmmap.get(k)[2] - 9999999 == 0):
            names.append(k)
        if fidslmap.get(k) == None or fidslmap.get(k)[1] - 9999999 == 0:
            names.append(k)
        if sabremap.get(k) == None or sabremap.get(k)[1] - 9999999 == 0:
            names.append(k)
    for i in range(len(names)):
        if names[i] in tsamap.keys():
            del tsamap[names[i]]

    ccagate = 0
    tsagate = 0
    optmgate = 0
    fidslgate = 0
    ori = 0
    sabregate = 0
    it = tsamap.keys()
    for k in it:
        tsagate += tsamap.get(k)[5]
        fidslgate += fidslmap.get(k)[1] * 3
        ori += tsamap.get(k)[2]
        optmgate += optmmap.get(k)[2] * 3
        ccagate += ccamap.get(k)[5]
        sabregate += sabremap.get(k)[1]
    print("number of case: ", len(tsamap), "ori: ", ori,
          ", GA: ", optmgate, ", SABRE: ", sabregate, ", FiDSL: ", fidslgate, ", TSA_num: ", tsagate, ", TSA_cca: ",
          ccagate)
    print("(GA-TSA_num)/GA: ", (optmgate - tsagate + 0.0) / optmgate)
    print("(SABRE-TSA_num)/SABRE: ", (sabregate - tsagate + 0.0) / sabregate)
    print("(FiDSL-TSA_num)/FiDSL: ", (fidslgate - tsagate + 0.0) / fidslgate)
    print("(TSA_cca-TSA_num)/TSA_cca: ", (ccagate - tsagate + 0.0) / ccagate)


def compareSABRE_TSA(sabrepath, tsapath, type):
    print('sabre:%s  tsa:%s'%(sabrepath,tsapath))
    sabremap = read_sabre_files(sabrepath)
    tsamap = read_tabu_files(tsapath)

    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    gate_gql_all = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    sabretime = 0
    tsatime = 0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        gate_gql_all += v1list[2]
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm'%k,20)
        l = fileResult.n2gates
        if type == 'small':
            if l > 100:
                continue
        elif type == 'medium':
            if l <= 100 or l > 1000:
                continue
        elif type == 'smallmedium':
            if l > 1000:
                continue
        elif type == 'smallmedium':
            if l > 1000:
                continue
        elif type == 'large':
            if l <= 1000:
                continue
        if (sabremap.get(k) == None):
            continue
        # // 比较swap个数
        v1 = v1list[5]
        v2 = sabremap.get(k)[1]
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        tsatime += v1list[5]
        sabretime += sabremap.get(k)[2]
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1

        elif (v2 < v1):
            # print(k)
            # print(v2 , "  ", v1)
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful SABRE case：", len(sabremap), ", TSA case：", len(tsamap))
    print("both successful case:", pub_res)
    print("number of gates inserted: SABRE：", gate_top, ", TSA：", gate_gql)
    print("number of case:  SABRE < TSA： ", greater_top_gql, ", TSA < SABRE： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(SABRE-TSA)/SABRE：", (gate_top - gate_gql + 0.0) / gate_top * 100, "% ")
    # print('TSA time: %s' % tsatime)


def compareFiDSL_TSA(fidlspath, tsapath, type):
    print('fidls:%s  tsa:%s'%(fidlspath,tsapath))
    fidslmap = read_topgraph_files(fidlspath)
    tsamap = read_tabu_files(tsapath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    gate_gql_all = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    tsatime = 0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' % k,20)
        l = fileResult.n2gates
        if type == 'small':
            if l > 100:
                continue
        elif type == 'medium':
            if l <= 100 or l > 1000:
                continue
        elif type == 'smallmedium':
            if l > 1000:
                continue
        elif type == 'large':
            if l <= 1000:
                continue
        if (fidslmap.get(k) == None):
            continue
        # // 比较swap个数
        v1 = v1list[5]
        tsatime += v1list[5]
        v2 = fidslmap.get(k)[1] * 3
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1

        elif (v2 < v1):
            # print(k)
            # print(v2 , "  ", v1)
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful FiDSL case：", len(fidslmap), ", TSA case：", len(tsamap))
    print("both successful case:", pub_res)
    print("number of gates inserted: FiDSL：", gate_top, " TSA：", gate_gql)
    print("number of case:  FiDSL < TSA： ", greater_top_gql, ", TSA < FiDSL： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(FiDSL-TSA)/FiDSL：", (gate_top - gate_gql + 0.0) / gate_top * 100, "% ")
    print('TSA time: %s' % tsatime)


def comparenumCCA_TSA(ccapath, tsapath, type='all'):
    ccamap = read_tabu_files(ccapath)
    tsamap = read_tabu_files(tsapath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    tsatime = 0
    ccatime = 0
    ori=0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        fu = FileUtils()
        fileResult = fu.readQasm('data/%s.qasm' % k,20)
        l = fileResult.n2gates
        if type == 'small':
            if l > 100:
                continue
        elif type == 'medium':
            if l <= 100 or l > 1000:
                continue
        elif type == 'smallmedium':
            if l > 1000:
                continue
        elif type == 'large':
            if l <= 1000:
                continue
        if ccamap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[5]
        v2 = ccamap.get(k)[5]
        pub_res += 1
        tsatime += v1list[5]
        ccatime += ccamap.get(k)[5]
        gate_gql += v1
        gate_top += v2
        ori+=v1list[2]
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_cca case：", len(ccamap), ", TSA_num case：", len(tsamap))
    print("both successful case:", pub_res)
    print("number of gates inserted: TSA_cca：", gate_top, " TSA_num：", gate_gql)
    print("number of case: TSA_cca < TSA_num： ", greater_top_gql, ", TSA_num < TSA_cca： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_cca-TSA_num)/TSA_cca：", (gate_top - gate_gql + 0.0) / gate_top * 100, "% ")
    # print('TSA time: %s,  CCA time: %s' % (tsatime, ccatime))
    print('the original number of gates:%s'%ori)


def comparenumDepth_TSA(depthpath, tsapath):
    depthmap = read_tabu_files(depthpath)
    tsamap = read_tabu_files(tsapath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        if depthmap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[5]
        v2 = depthmap.get(k)[5]
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_depth case：", len(depthmap), ", TSA_num case：", len(tsamap))
    print("both successful case:", pub_res)
    print("number of gates inserted: TSA_depth：", gate_top, " TSA_num：", gate_gql)
    print("case:  TSA_depth < TSA_num： ", greater_top_gql, ", TSA_num < TSA_depth： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_depth-TSA_num)/TSA_depth：", (gate_top - gate_gql + 0.0) / gate_top * 100, "% ")


def comparenumCCA_Depth(ccapath, depthpath):
    ccamap = read_tabu_files(ccapath)
    depthmap = read_tabu_files(depthpath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    it = depthmap.keys()
    for k in it:
        v1list = depthmap.get(k)
        if ccamap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[5]
        v2 = ccamap.get(k)[5]
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_cca case：", len(ccamap), " TSA_depth case：", len(depthmap))
    print("both successful case:", pub_res)
    print("number of gates inserted: TSA_cca：", gate_top, " TSA_depth：", gate_gql)
    print("case:  TSA_cca < TSA_depth： ", greater_top_gql, ", TSA_depth < TSA_cca： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_depth-TSA_cca)/TSA_depth：", (gate_gql - gate_top + 0.0) / gate_gql * 100, "% ")


def comparedepthCCA_TSA(ccapath, tsapath, type='all'):
    ccamap = read_tabu_files(ccapath)
    tsamap = read_tabu_files(tsapath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    tsatime = 0
    ccatime = 0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        if type == 'small':
            if v1list[2] > 100:
                continue
        elif type == 'medium':
            if v1list[2] <= 100 or v1list[2] > 1000:
                continue
        elif type == 'large':
            if v1list[2] <= 1000:
                continue
        if ccamap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[4]
        v2 = ccamap.get(k)[4]
        pub_res += 1
        tsatime += v1list[8]
        ccatime += ccamap.get(k)[8]
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_cca case：", len(ccamap), ", TSA_num case：", len(tsamap))
    print("both successful case:", pub_res)
    print("depth of gates inserted: TSA_cca：", gate_top, " TSA_num：", gate_gql)
    print("number of case: TSA_cca < TSA_num： ", greater_top_gql, ", TSA_num < TSA_cca： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_cca-TSA_num)/TSA_cca：", (gate_gql -  gate_top+ 0.0) / gate_gql * 100, "% ")
    # print('TSA time: %s,  CCA time: %s' % (tsatime, ccatime))


def comparedepthDepth_TSA(depthpath, tsapath):
    depthmap = read_tabu_files(depthpath)
    tsamap = read_tabu_files(tsapath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    it = tsamap.keys()
    for k in it:
        v1list = tsamap.get(k)
        if depthmap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[4]
        v2 = depthmap.get(k)[4]
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_depth case：", len(depthmap), ", TSA_num case：", len(tsamap))
    print("both successful case:", pub_res)
    print("depth of gates inserted: TSA_depth：", gate_top, " TSA_num：", gate_gql)
    print("case:  TSA_depth < TSA_num： ", greater_top_gql, ", TSA_num < TSA_depth： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_depth-TSA_num)/TSA_depth：", (gate_gql -  gate_top+ 0.0) / gate_gql  * 100, "% ")


def comparedepthCCA_Depth(ccapath, depthpath):
    ccamap = read_tabu_files(ccapath)
    depthmap = read_tabu_files(depthpath)
    greater_top_gql = 0
    greater_gql_top = 0
    eq_gql_top = 0
    gate_top = 0
    gate_gql = 0
    pub_res = 0
    pro_top_gql = 0
    pro_gql_top = 0
    it = depthmap.keys()
    for k in it:
        v1list = depthmap.get(k)
        if ccamap.get(k) == None:
            continue
        # // 比较swap个数
        v1 = v1list[4]
        v2 = ccamap.get(k)[4]
        pub_res += 1
        gate_gql += v1
        gate_top += v2
        if v1 < v2:
            greater_gql_top += 1
            pro_gql_top += v2 - v1
        elif (v2 < v1):
            greater_top_gql += 1
            pro_top_gql += v1 - v2
        else:
            eq_gql_top += 1

    print("number of successful TSA_cca case：", len(ccamap), " TSA_depth case：", len(depthmap))
    print("both successful case:", pub_res)
    print("depth of gates inserted: TSA_cca：", gate_top, " TSA_depth：", gate_gql)
    print("case:  TSA_cca < TSA_depth： ", greater_top_gql, ", TSA_depth < TSA_cca： ", greater_gql_top, ", equal： ",
          eq_gql_top)
    print("(TSA_depth-TSA_cca)/TSA_depth：", (gate_top -  gate_gql+ 0.0) / gate_top  * 100, "% ")


def compareGA_TSA(gamap, tsamap):
    tsagate = 0
    optmgate = 0
    ori = 0
    count = 0
    tsagreat = 0
    optmgreat = 0
    eq = 0
    it = tsamap.keys()
    for k in it:
        optm = gamap.get(k)
        if optm != None and optm[1][3] != 9999999:
            count += 1
            ori += tsamap.get(k)[2]
            tsagate += tsamap.get(k)[5]
            optmgate += optm[1][3] * 3
            if tsamap.get(k)[5] < optm[1][3]:
                tsagreat += 1
            elif tsamap.get(k)[5] > optm[1][3]:
                optmgreat += 1
            else:
                eq += 1

    print("number of successful FiDSL case：", len(gamap), ", TSA case：", len(tsamap))
    print("both successful case:", count)
    print("case:  GA < TSA： ", optmgreat + ", TSA < GA： ", tsagreat + ", equal： ", eq)
    print("ORI: ", ori, " number of gates inserted: TSA_num: ", tsagate,
          "GA: ", optmgate)
    print("(GA-TSA_num)/GA: ", (tsagate - optmgate + 0.0) / optmgate)


# evaldepth ./results/test/tsa_ccamindepth ./results/test/tsa_depthmindepth ./results/test/tsamindepth

if __name__ == '__main__':

    if sys.argv[1].__eq__('best'):
        if sys.argv[2] != '':
            selectTheBestResultFromFiles(sys.argv[2])
        else:
            print('please input the correct parameters')
    elif sys.argv[1].__eq__('minigate'):
        if sys.argv[2] != '' and sys.argv[3] != '' and sys.argv[4] != '':
            i = 4
            files = list()
            while i < len(sys.argv):
                print(sys.argv[i])
                f = os.listdir(sys.argv[i])
                for j in f:
                    files.append('%s/%s' % (sys.argv[i], j))
                    # print('%s/%s' % (sys.argv[i], j),end=' ')
                print()
                i += 1
            selectTheMinimalGatesFromFiles(files, sys.argv[2], sys.argv[3])
        else:
            print('please input the correct parameters')
    elif sys.argv[1].__eq__('minidepth'):
        if sys.argv[2] != '' and sys.argv[3] != '' and sys.argv[4] != '':
            i = 4
            files = list()
            while i < len(sys.argv):
                print(sys.argv[i])
                f = os.listdir(sys.argv[i])
                for j in f:
                    files.append('%s/%s' % (sys.argv[i], j))
                    # print('%s/%s' % (sys.argv[i], j),end=' ')
                print()
                i += 1
            selectTheMinimalDepthFromFiles(files,sys.argv[2], sys.argv[3])
        else:
            print('please input the correct parameters')
    elif sys.argv[1].__eq__('ini'):
        caculateTheAdjustOptm()
        caculateTheAdjustSABRE()
        caculateTheAdjustFiDSL()
        caculateTheAdjustFiDSL_QX20()
        caculateTheAdjustFiDSL_Sycamore()
        caculateTheAdjustTSA()
        caculateTheAdjustTSA_QX20()
        caculateTheAdjustTSA_sycamore()
        caculateTheAdjustCCA()
    elif sys.argv[1].__eq__('adj'):
        caculateOptm_()
        caculateSABRE_()
        caculateFiDSL_()
        caculateFiDSL_QX20()
        caculateFiDSL_Sycamore()
        caculateTSA_()
        caculateTSA_QX20()
        caculateTSA_Sycamore()
    elif sys.argv[1].__eq__('pairwise'):
        # paiwise type sabre fidsl tsa cca
        # pairwise medium ./results/data/sabre/sabre ./results/data/fidsl/fidsl  ./results/data/tsa/tsa ./results/data/cca/tsa_cca  ./results/qct ./results/new/gatsa
        #pairwise medium ./results/data/sabre/sabre ./results/data/fidsl/fidsl  ./results/new/tsa ./results/new/tsacca  ./results/qct ./results/new/gatsa
        print("--------------------SABRE VS TSA_num--------------------")
        compareSABRE_TSA(sys.argv[3], sys.argv[5], sys.argv[2])
        print("--------------------FiDSL VS TSA_num--------------------")
        compareFiDSL_TSA(sys.argv[4], sys.argv[5], sys.argv[2])
        print("--------------------SABRE VS TSA_cca--------------------")
        compareSABRE_TSA(sys.argv[3], sys.argv[6], sys.argv[2])
        print("--------------------FiDSL VS TSA_cca--------------------")
        compareFiDSL_TSA(sys.argv[4], sys.argv[6], sys.argv[2])
        print("--------------------TSA_cca VS TSA_num--------------------")
        comparenumCCA_TSA(sys.argv[6], sys.argv[5], sys.argv[2])
    elif sys.argv[1].__eq__('evalnum'):
        # eval cca depth tsa
        #evalnum  ./results/new/tsacca ./results/new/tsadepth   ./results/new/tsa
        print("--------------------TSA_cca VS TSA_num--------------------")
        comparenumCCA_TSA(sys.argv[2], sys.argv[4])
        print("--------------------TSA_depth VS TSA_num--------------------")
        comparenumDepth_TSA(sys.argv[3], sys.argv[4])
        print("--------------------TSA_cca VS TSA_depth--------------------")
        comparenumCCA_Depth(sys.argv[2], sys.argv[3])
    elif sys.argv[1].__eq__('evaldepth'):
        # eval cca depth tsa
        #evaldepth  ./results/new/tsaccaminidep ./results/new/tsadepthminidep   ./results/new/tsaminidep
        print("--------------------TSA_cca VS TSA_num--------------------")
        comparedepthCCA_TSA(sys.argv[2], sys.argv[4])
        print("--------------------TSA_depth VS TSA_num--------------------")
        comparedepthDepth_TSA(sys.argv[3], sys.argv[4])
        print("--------------------TSA_cca VS TSA_depth--------------------")
        comparedepthCCA_Depth(sys.argv[2], sys.argv[3])
    elif sys.argv[1].__eq__('forwdelta'):
        i = 2
        files = list()
        names = list()
        while i < len(sys.argv):
            print(sys.argv[i])
            f = os.listdir(sys.argv[i])
            print(len(f))
            names.extend(f)
            for j in f:
                files.append('%s%s' % (sys.argv[i], j))
                # print('%s/%s' % (sys.argv[i], j),end='  ')
            # print()
            i += 1
        print(len(files))
        generateForwDelta(files,names)
    elif sys.argv[1].__eq__('chart'):
        generateGACharts(sys.argv[2])
    else:
        generateMaximal(sys.argv[1])
        print('please input the correct parameters')
