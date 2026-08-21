import Challenge

theorem navier_stokes_geometric_exclusion := by
  intro Ω corner u p_field nu lambda h_pde h_balance h_domain hx_pos h_noslip h_smooth_bound h_smooth
  have h_bal := pde_implies_scaling_balance u p_field nu h_pde lambda h_balance
  have h_grad_active := corner_domain_forces_gradient Ω corner h_domain hx_pos
  have h_shear_enforced := corner_shearing_requirement u corner h_noslip h_grad_active
  have h_lambda : lambda = -1 := scaling_balance_solves_minus_one lambda h_bal
  have h_smooth_ineq := smooth_scaling_lower_bound u lambda h_smooth h_smooth_bound
  subst h_lambda
  linarith
