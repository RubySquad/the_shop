###user_roles
- id
- name

###users
- id
- login : string
- pass : string
- user_roles : references
- surname : string
- name : string
- middle_name : string
- phone : string
- call_time : ?
- email : string
- address : string
- comment : string
- discount : integer


###units
- id
- name

###goods
- id
- name : string
- code : integer
- description : text
- aditional_params : hash ?
- unit : references
- count : float
- price : float

