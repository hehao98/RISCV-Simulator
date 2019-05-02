'''
Plot cache statistics
'''

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import csv
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Load csv file")
    parser.add_argument(
        "csvfile", help="The path to csv file containing cache analysis data")
    args = parser.parse_args()

    cache_size = [32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768]
    block_size = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096]
    associaivity = [1, 2, 4, 8, 16, 32]

    data = {
        'block_size': [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096],
        'miss_rate0': [0] * 13,
        'miss_rate1': [0] * 13,
        'miss_rate2': [0] * 13,
        'miss_rate3': [0] * 13,
        'miss_rate4': [0] * 13,
        'miss_rate5': [0] * 13,
        'miss_rate6': [0] * 13,
        'miss_rate7': [0] * 13,
        'miss_rate8': [0] * 13,
        'miss_rate9': [0] * 13,
        'miss_rate10': [0] * 13,
    }

    data2 = {
        'associativity': [1, 2, 4, 8, 16, 32],
        'miss_rate0': [0] * 6,
        'miss_rate1': [0] * 6,
        'miss_rate2': [0] * 6,
        'miss_rate3': [0] * 6,
        'miss_rate4': [0] * 6,
        'miss_rate5': [0] * 6,
        'miss_rate6': [0] * 6,
        'miss_rate7': [0] * 6,
        'miss_rate8': [0] * 6,
        'miss_rate9': [0] * 6,
        'miss_rate10': [0] * 6,
    }

    data3 = {
        'cache_size': [32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768],
        'wb_wa': [0] * 11,
        'wb_nwa': [0] * 11,
        'wt_wa': [0] * 11,
        'wt_nwa': [0] * 11,
    }

    with open(args.csvfile, "r") as csvFile:
        reader = csv.DictReader(csvFile)
        for row in reader:
            index = cache_size.index(int(row['cacheSize']) // 1024)
            if int(row['blockSize']) == 64:
                if int(row['writeBack']) == 1 and int(row['writeAllocate']) == 1:
                    data3['wb_wa'][index] = row['totalCycles']
                elif int(row['writeBack']) == 1 and int(row['writeAllocate']) == 0:
                    data3['wb_nwa'][index] = row['totalCycles']
                elif int(row['writeBack']) == 0 and int(row['writeAllocate']) == 1:
                    data3['wt_wa'][index] = row['totalCycles']
                elif int(row['writeBack']) == 0 and int(row['writeAllocate']) == 0:
                    data3['wt_nwa'][index] = row['totalCycles']

            if int(row['writeBack']) != 1 or int(row['writeAllocate']) != 1:
                continue
            key = 'miss_rate' + str(index)
            data[key][block_size.index(
                int(row['blockSize']))] = row['missRate']

            if int(row['blockSize']) == 64:
                data2[key][associaivity.index(
                    int(row['associativity']))] = row['missRate']

    '''
    print(data)
    df = pd.DataFrame.from_dict(data)
    for i in range(0, 11):
        plt.plot('block_size', 'miss_rate'+str(i), data=df, marker='o')
    # plt.ylim([0, 0.5])
    plt.legend(['Cache Size: ' + str(cache_size[i]) +
                'KB' for i in range(0, 11)])
    plt.gca().invert_yaxis()
    plt.xlabel('Block Size (Bytes)')
    plt.ylabel('Miss Rate')
    plt.title(args.csvfile)
    plt.show()
    '''

    '''
    print(data2)
    df = pd.DataFrame.from_dict(data2)
    for i in range(0, 11):
        plt.plot('associativity', 'miss_rate'+str(i), data=df, marker='o')
    plt.legend(['Cache Size: ' + str(cache_size[i]) +
                'KB' for i in range(0, 11)])
    plt.gca().invert_yaxis()
    plt.xlabel('Associativity')
    plt.ylabel('Miss Rate')
    plt.title(args.csvfile)
    plt.show()
    '''

    print(data3)
    df = pd.DataFrame.from_dict(data3)
    plt.plot('cache_size', 'wb_wa', data=df, marker='o')
    plt.plot('cache_size', 'wb_nwa', data=df, marker='o')
    plt.plot('cache_size', 'wt_wa', data=df, marker='o')
    plt.plot('cache_size', 'wt_nwa', data=df, marker='o')
    plt.legend(['WB, WA', 'WB, Non-WA', 'WT, WA', 'WT, Non-WA'])
    plt.gca().invert_yaxis()
    #plt.ylim(60000, 100000)
    plt.xscale('log')
    plt.xlabel('Cache Size (KB)')
    plt.ylabel('Total Cycles')
    plt.title(args.csvfile)
    plt.show()
