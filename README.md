LOGIN: (/)
-form asking for
	- email
	- password
=> that is taken into a params hash and if both fields exist in any instance of
the User model, it will put their id in a sessions hash it will redirect_to user_path(@user), 

	AND

-form to create new user, asking for
	- name
	- email
	- passsword
=> creates new User record with those params[:name, :username, :password]

USER SHOW(/user/:id)
- link_to go to thier spheres => user/:id/spheres
- link_to create a new sphere = /user/:id/spheres/new 
- link_to create a new goal => /user/:id/goal/new
- link_to logout 

INDEX of SPHERES: (/user/:id/spheres) 
-List of all their SPHERES 
	with links to that sphere => (/user/:id/sphere/:id)
	with links to edit, create or delete a sphere =>
	(edit -  /user/:id/sphere/:id/edit 
	delete - /user/:id/sphere/:id
	create - /user/:id/spheres/new ) 

SPHERE SHOW page: (/user/:id/sphere/:id)
-List of all their goals 
	with links to edit,create or delete a goal =>
	(edit: /user/:id/sphere/:id/goal/:id/edit
	delete: /user/:id/sphere/:id/goal/:id
	create: /user:/:id )

SPHERE NEW page (/user/:id/spheres/new)
title = sphere.title

	GOAL NEW
	(collections:) select from {user.goals} 

		OR

	(create new) 
	title = sphere.goal.title
	description = sphere.goal.description

GOAL NEW page (/user/:id/goals/new)
-form
title = goal.title
desc = goal.desc
sphere 
	(collections) select from {user.spheres}
	or
	(create new)
	sphere_title = goals.sphere.title
	