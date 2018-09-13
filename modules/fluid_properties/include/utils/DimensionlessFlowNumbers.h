//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html

#ifndef DIMENSIONLESSFLOWNUMBERS_H
#define DIMENSIONLESSFLOWNUMBERS_H

#include "libmesh/libmesh_common.h"
using namespace libMesh;

namespace fp
{

/**
 * Compute Reynolds number
 *
 * @param rho  Density [kg/m^3]
 * @param vel  Velocity [m/s]
 * @param L  Characteristic length [m]
 * @param mu  Dynamic viscosity [Pa-s]
 * @return Reynolds number
 */
Real reynolds(Real rho, Real vel, Real L, Real mu);

/**
 * Compute Prandtl number
 *
 * @param cp  Isobaric specific heat [J/K]
 * @param mu  Dynamic viscosity [Pa-s]
 * @param k  Thermal conductivity [W/m-K]
 * @return Prandtl number
 */
Real prandtl(Real cp, Real mu, Real k);

/**
 * Compute Grashof number
 *
 * @param beta  Thermal expansion coefficient [1/K]
 * @param T_s  Surface temperature [K]
 * @param T_bulk  Bulk temperature [K]
 * @param L  Characteristic length [m]
 * @param rho  Density [kg/m^3]
 * @param mu  Dynamic viscosity [Pa-s]
 * @param gravity_magnitude  Gravitational acceleration magnitude
 * @return Grashof number
 */
Real grashof(Real beta, Real T_s, Real T_bulk, Real L, Real rho, Real mu, Real gravity_magnitude);

/**
 * Compute Laplace number
 *
 * @param sigma  Surface tension [N/m]
 * @param rho  Density [kg/m^3]
 * @param L  Characteristic length [m]
 * @param mu  Dynamic viscosity [Pa-s]
 * @return Laplace number
 */
Real laplace(Real sigma, Real rho, Real L, Real mu);

} // namespace fp

#endif
