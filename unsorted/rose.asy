



int n = 1000; //800
real A = 1.995653;
real B = 1.27689;
int C = 8;
real petalNum = 3.6;

r = np.linspace(0, 1, n)
theta = np.linspace(-2, 20 * np.pi, n)
R, THETA = np.meshgrid(r, theta)
// define the number of petals we want per cycle. Roses have 3 and a bit.



// x = 1 - (1/2) * ((5/4)*(1 - (petalNum*THETA % 2*np.pi)/np.pi)**2 - 1/4)**2
// phi = (np.pi / 2) * np.exp(-THETA / (C * np.pi))
// y  = A* (R**2) * (B * R - 1)**2 *np.sin(phi)
// R2 = x * (R * np.sin(phi) + y * np.cos(phi))
// X = R2 * np.sin(THETA)
// Y = R2 * np.cos(THETA)
// Z = x * (R * np.cos(phi) - y * np.sin(phi))

// print("compute done")
// fig, ax = plt.subplots(subplot_kw={"projection": "3d"})
// surf = ax.plot_surface(X, Y, Z, cmap=cm.coolwarm, linewidth=0, antialiased=False)
// # Customize the z axis.
// ax.set_zlim(-1.01, 1.01)
// ax.zaxis.set_major_locator(LinearLocator(10))
// # A StrMethodFormatter is used automatically
// ax.zaxis.set_major_formatter('{x:.02f}')

// # Add a color bar which maps values to colors.
// fig.colorbar(surf, shrink=0.9, aspect=5)

// plt.show()

