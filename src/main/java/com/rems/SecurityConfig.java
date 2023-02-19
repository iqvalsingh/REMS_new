/**
 * 
 */
package com.rems;

/**
 * @author Satbir Kaur
 *
 */
//@Configuration
//@EnableWebSecurity
public class SecurityConfig
{

	// @Autowired
	// AdminService adminService;

	// @Autowired private UserDetailsService userDetailsService;

	// @Autowired
	// DataSource dataSource;

	/*
	 * @Bean public PasswordEncoder passwordEncoder() { return
	 * NoOpPasswordEncoder.getInstance();// new BCryptPasswordEncoder(); }
	 * 
	 * @Bean public SecurityFilterChain filterChain(HttpSecurity http) throws
	 * Exception { http.csrf().disable() .authorizeHttpRequests((authorize) ->
	 * authorize.requestMatchers(new AntPathRequestMatcher("/admin/**"))
	 * .hasRole("ADMIN").requestMatchers(new
	 * AntPathRequestMatcher("/contact.html")).hasRole("ADMIN") .requestMatchers(new
	 * AntPathRequestMatcher("/**")).permitAll().anyRequest().authenticated())
	 * .formLogin(form ->
	 * form.loginPage("/admin/login.html").usernameParameter("username")
	 * .passwordParameter("password").loginProcessingUrl("/login").permitAll()
	 * .defaultSuccessUrl("/admin/dashboard.html")) .logout(logout ->
	 * logout.logoutRequestMatcher(new AntPathRequestMatcher("/admin/logout.html"))
	 * .permitAll()) .exceptionHandling().accessDeniedPage("/403"); return
	 * http.build(); }
	 * 
	 * @Autowired public void configureGlobal(AuthenticationManagerBuilder auth)
	 * throws Exception {
	 * auth.inMemoryAuthentication().withUser("admin").password("Test@123")
	 * .roles("ADMIN"); .and()
	 * .withUser("test@gmail.com").password("Test@123").roles("USER");
	 * 
	 * // auth.userDetailsService(adminService);//
	 * .passwordEncoder(passwordEncoder()); }
	 */

	/*
	 * @Bean public SecurityFilterChain securityFilterChain(HttpSecurity http)
	 * throws Exception { List<RequestMatcher> requestMatchers = new ArrayList<>();
	 * requestMatchers.add(new AntPathRequestMatcher("/")); requestMatchers.add(new
	 * AntPathRequestMatcher("/index.html")); requestMatchers.add(new
	 * AntPathRequestMatcher("/about.html")); requestMatchers.add(new
	 * AntPathRequestMatcher("/contact.html")); requestMatchers.add(new
	 * AntPathRequestMatcher("/properties-grid.html")); requestMatchers.add(new
	 * AntPathRequestMatcher("/single-property-detail.html")); //
	 * requestMatchers.add(new AntPathRequestMatcher("/propertyimages/**"));// , //
	 * // HttpMethod.GET.toString()));
	 * 
	 * http.authorizeHttpRequests((requests) -> requests.requestMatchers(new
	 * OrRequestMatcher(requestMatchers)) .permitAll().anyRequest().authenticated())
	 * .formLogin((form) -> form.loginPage("/admin/login.html").permitAll())
	 * .logout((logout) -> logout.permitAll());
	 * 
	 * return http.build(); }
	 */

	/*
	 * @Bean public UserDetailsService userDetailsService() { UserDetails user =
	 * User.withDefaultPasswordEncoder().username("admin").password("Test@123").
	 * roles("ADMIN") .build();
	 * 
	 * return new InMemoryUserDetailsManager(user); }
	 */

}
