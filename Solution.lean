import Challenge

theorem navier_stokes_geometric_exclusion (Ω : Set Point3D) (corner : Point3D) (u : VectorField3D) (p_field : ScalarField3D) (nu : ℝ) (lambda : ℝ)
  (h_pde : FullNavierStokesPDE u p_field nu)
  (h_balance : inertial_scaling lambda = viscous_scaling lambda)
  (h_domain : IsRightAngleCornerDomain Ω)
  (hx_pos : corner.1 > 0)
  (h_noslip : NoSlipBoundary u corner) 
  (h_smooth_bound : lambda > -1) :
  ¬ (GlobalSmoothSolution u) := by
  intro h_smooth
  have h_bal := pde_implies_scaling_balance u p_field nu h_pde lambda h_balance
  have h_grad_active := corner_domain_forces_gradient Ω corner h_domain hx_pos
  have h_shear_enforced := corner_shearing_requirement u corner h_noslip h_grad_active
  have h_lambda : lambda = -1 := scaling_balance_solves_minus_one lambda h_bal
  have h_smooth_ineq := smooth_scaling_lower_bound u lambda h_smooth h_smooth_bound
  subst h_lambda
  linarith
