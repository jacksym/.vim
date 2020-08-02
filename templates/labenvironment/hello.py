import numpy as np
import pandas as pd
import matplotlib.pyplot as plt



df = pd.read_csv('table.tsv', '\t')
x_values = df['column1']
y_values = df['column2']

fig, ax = plt.subplots()
ax.scatter(x_values, y_values, marker='_')
ax.set_xlabel(r'$\ln (x)$')
ax.set_ylabel('Y Values')
ax.set_title(r'$\int _0 ^\infty x \ dx$')
ax.errorbar(x_values, y_values, yerr=2, fmt='none')
ax.grid(True)

lx = x_values.min()
mx = x_values.max()
m, b = np.polyfit(x_values, y_values, 1)
xval = np.linspace(lx, mx, 10)
ax.plot(xval, m*xval + b, 'r--')

plt.savefig('plot.png')



fig2, ax2 = plt.subplots()
xval2 = np.linspace(-10, 10, 500)
yval2 = np.sin(2 * xval2)
ax2.scatter(xval2, yval2, s=1)
ax2.plot(xval2, np.sin(2*xval2), 'r--')

plt.savefig('plot2.png')
