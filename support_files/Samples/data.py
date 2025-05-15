import numpy as np
import os


results = open("results.txt", 'w')
http_all_samples = []
fxos_all_samples = []



def print_data_analysis(file_name, out_file):

    http_total_samples = 0
    http_avg = 0
    http_max = 0
    http_min = 100000000000000000
    http_samples = []

    fxos_total_samples = 0
    fxos_avg = 0
    fxos_max = 0
    fxos_min = 100000000000000000
    fxos_samples = []

    with open(file_name, 'r') as f:
        for x in f:
            if("HTTP " in x):
                value = int(next(f))
                http_samples.append(value)
                http_all_samples.append(value)
                http_total_samples += 1
                http_avg += value
                if(value > http_max):
                    http_max = value
                if(value < http_min):
                    http_min = value
            
            if("FXOS" in x):

                value = int(next(f))
                fxos_samples.append(value)
                fxos_all_samples.append(value)
                fxos_total_samples += 1
                fxos_avg += value
                if(value > fxos_max):
                    fxos_max = value
                if(value < fxos_min):
                    fxos_min = value

    http_avg /= http_total_samples
    fxos_avg /= fxos_total_samples

    print("------ {} -----".format(file_name))
    print("----- HTTP -----")
    print("Total Samples: {}".format(http_total_samples))
    print("Avarage Value: {:.2f}".format(http_avg))
    print("Standard Deviation: {:.2f}".format(np.std(http_samples)))
    print("Maximum Value: {}".format(http_max))
    print("Minimum Value: {}".format(http_min))

    out_file.write("------ {} -----\n".format(file_name))
    out_file.write("----- HTTP -----\n")
    out_file.write("Total Samples: {}\n".format(http_total_samples))
    out_file.write("Avarage Value: {:.2f}\n".format(http_avg))
    out_file.write("Standard Deviation: {:.2f}\n".format(np.std(http_samples)))
    out_file.write("Maximum Value: {}\n".format(http_max))
    out_file.write("Minimum Value: {}\n".format(http_min))

    print("----- FXOS -----")
    print("Total Samples: {}".format(fxos_total_samples))
    print("Avarage Value: {:.2f}".format(fxos_avg))
    print("Standard Deviation: {:.2f}".format(np.std(fxos_samples)))
    print("Maximum Value: {}".format(fxos_max))
    print("Minimum Value: {}".format(fxos_min))

    out_file.write("----- FXOS -----\n")
    out_file.write("Total Samples: {}\n".format(fxos_total_samples))
    out_file.write("Avarage Value: {:.2f}\n".format(fxos_avg))
    out_file.write("Standard Deviation: {:.2f}\n".format(np.std(fxos_samples)))
    out_file.write("Maximum Value: {}\n".format(fxos_max))
    out_file.write("Minimum Value: {}\n".format(fxos_min))


for i in range(1,9):
    print_data_analysis("sample{}.txt".format(i), results)
    print()

results.write("\n")
results.write("---- Aggregate Values ---- \n")
results.write("----- HTTP -----\n")
results.write("Total Samples: {}\n".format(len(http_all_samples)))
results.write("Avarage Value: {:.2f}\n".format(np.average(http_all_samples)))
results.write("Standard Deviation: {:.2f}\n".format(np.std(http_all_samples)))
results.write("Maximum Value: {:.2f}\n".format(np.max(http_all_samples)))
results.write("Minimum Value: {:.2f}\n".format(np.min(http_all_samples)))

results.write("----- FXOS -----\n")
results.write("Total Samples: {}\n".format(len(fxos_all_samples)))
results.write("Avarage Value: {:.2f}\n".format(np.average(fxos_all_samples)))
results.write("Standard Deviation: {:.2f}\n".format(np.std(fxos_all_samples)))
results.write("Maximum Value: {:.2f}\n".format(np.max(fxos_all_samples)))
results.write("Minimum Value: {:.2f}\n".format(np.min(fxos_all_samples)))