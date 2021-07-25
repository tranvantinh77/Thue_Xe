package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import source.iService.UserService;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserService userService;

	@Override
	public UserDetails loadUserByUsername(String user_name) throws UsernameNotFoundException {
		source.entity.UserEntity user = userService.findByUserName(user_name);

		if (user == null) {
			System.out.println("User not found! " + user_name);
			throw new UsernameNotFoundException("User " + user_name + " was not found in the database");
		}
		System.out.println("Found User: " + user);

		// [ROLE_USER, ROLE_ADMIN,..]
		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		String roleNames = "";
		if(user.getRole_id().getId() == 1) {
			roleNames = "ROLE_USER";
		}else {
			roleNames = "ROLE_ADMIN";
		}
		if (roleNames != "") {
			// ROLE_USER, ROLE_ADMIN,..
			GrantedAuthority authority = new SimpleGrantedAuthority(roleNames);
			grantList.add(authority);
		}else {
			GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_USER");
			grantList.add(authority);
		}

		UserDetails userDetails = (UserDetails) new User(user.getUser_name(), //
				user.getPassword(), grantList);
		return userDetails;
	}

}
