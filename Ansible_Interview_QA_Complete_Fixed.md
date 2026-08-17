# Ansible Interview Questions & Answers --- Beginner to Expert

> Comprehensive interview handbook reconstructed from the Ansible
> project and scenario material. Questions are listed first; click any
> question to jump to its answer.

## Question Index

### Beginner Fundamentals

1. [What is Ansible and why is it used?](#1-what-is-ansible-and-why-is-it-used)
2. [What are the main features of Ansible?](#2-what-are-the-main-features-of-ansible)
3. [How is Ansible different from other configuration-management tools?](#3-how-is-ansible-different-from-other-configuration-management-tools)
4. [What is agentless architecture in Ansible?](#4-what-is-agentless-architecture-in-ansible)
5. [What are the prerequisites for using Ansible?](#5-what-are-the-prerequisites-for-using-ansible)
6. [What is an Ansible control node?](#6-what-is-an-ansible-control-node)
7. [What is a managed node?](#7-what-is-a-managed-node)
8. [Which protocols does Ansible use to communicate with managed nodes?](#8-which-protocols-does-ansible-use-to-communicate-with-managed-nodes)
9. [What is an Ansible inventory?](#9-what-is-an-ansible-inventory)
10. [What is the default inventory file location?](#10-what-is-the-default-inventory-file-location)
11. [What inventory formats does Ansible support?](#11-what-inventory-formats-does-ansible-support)
12. [What is an ad hoc command?](#12-what-is-an-ad-hoc-command)
13. [When should you use ad hoc commands versus playbooks?](#13-when-should-you-use-ad-hoc-commands-versus-playbooks)
14. [What is an Ansible module?](#14-what-is-an-ansible-module)
15. [What is an Ansible playbook?](#15-what-is-an-ansible-playbook)
16. [What is a play in Ansible?](#16-what-is-a-play-in-ansible)
17. [What is a task in Ansible?](#17-what-is-a-task-in-ansible)
18. [What is YAML and why does Ansible use it?](#18-what-is-yaml-and-why-does-ansible-use-it)
19. [What does idempotency mean in Ansible?](#19-what-does-idempotency-mean-in-ansible)
20. [How do you install Ansible?](#20-how-do-you-install-ansible)
21. [How do you check the installed Ansible version?](#21-how-do-you-check-the-installed-ansible-version)
22. [How do you test connectivity to managed nodes?](#22-how-do-you-test-connectivity-to-managed-nodes)
23. [What is the ansible.cfg file?](#23-what-is-the-ansiblecfg-file)
24. [What is the order of precedence for ansible.cfg?](#24-what-is-the-order-of-precedence-for-ansiblecfg)
25. [What is privilege escalation in Ansible?](#25-what-is-privilege-escalation-in-ansible)
26. [What is become in Ansible?](#26-what-is-become-in-ansible)
27. [What is the difference between become, become_user and become_method?](#27-what-is-the-difference-between-become-become_user-and-become_method)
28. [What are facts in Ansible?](#28-what-are-facts-in-ansible)
29. [What does gather_facts do?](#29-what-does-gather_facts-do)
30. [What is the setup module?](#30-what-is-the-setup-module)

### Inventory and Host Management

31. [How do you create a static inventory?](#31-how-do-you-create-a-static-inventory)
32. [What are inventory groups?](#32-what-are-inventory-groups)
33. [How do you create parent and child groups?](#33-how-do-you-create-parent-and-child-groups)
34. [What are host variables?](#34-what-are-host-variables)
35. [What are group variables?](#35-what-are-group-variables)
36. [What are group_vars and host_vars directories?](#36-what-are-group_vars-and-host_vars-directories)
37. [What is dynamic inventory?](#37-what-is-dynamic-inventory)
38. [When would you use dynamic inventory?](#38-when-would-you-use-dynamic-inventory)
39. [How can Ansible dynamically discover Azure or cloud hosts?](#39-how-can-ansible-dynamically-discover-azure-or-cloud-hosts)
40. [How do you specify a custom inventory file?](#40-how-do-you-specify-a-custom-inventory-file)
41. [How do you list all hosts in an inventory?](#41-how-do-you-list-all-hosts-in-an-inventory)
42. [How do you list hosts matched by a pattern?](#42-how-do-you-list-hosts-matched-by-a-pattern)
43. [How do host patterns work in Ansible?](#43-how-do-host-patterns-work-in-ansible)
44. [How do you target multiple groups?](#44-how-do-you-target-multiple-groups)
45. [How do you exclude hosts from a play?](#45-how-do-you-exclude-hosts-from-a-play)
46. [How do you run the same playbook on nodes using different SSH ports and usernames?](#46-how-do-you-run-the-same-playbook-on-nodes-using-different-ssh-ports-and-usernames)
47. [How do you configure ansible_host?](#47-how-do-you-configure-ansible_host)
48. [How do you configure ansible_user?](#48-how-do-you-configure-ansible_user)
49. [How do you configure ansible_port?](#49-how-do-you-configure-ansible_port)
50. [How do you use SSH keys with Ansible?](#50-how-do-you-use-ssh-keys-with-ansible)

### Modules and Ad Hoc Commands

51. [What are commonly used Ansible modules?](#51-what-are-commonly-used-ansible-modules)
52. [How do you execute a shell command with Ansible?](#52-how-do-you-execute-a-shell-command-with-ansible)
53. [What is the difference between command and shell modules?](#53-what-is-the-difference-between-command-and-shell-modules)
54. [When should you avoid the shell module?](#54-when-should-you-avoid-the-shell-module)
55. [How do you copy a file to remote servers?](#55-how-do-you-copy-a-file-to-remote-servers)
56. [What is the difference between copy and template modules?](#56-what-is-the-difference-between-copy-and-template-modules)
57. [How do you fetch a file from a remote host?](#57-how-do-you-fetch-a-file-from-a-remote-host)
58. [How do you synchronize directories with Ansible?](#58-how-do-you-synchronize-directories-with-ansible)
59. [How do you install packages using Ansible?](#59-how-do-you-install-packages-using-ansible)
60. [What is the difference between package, apt, yum and dnf modules?](#60-what-is-the-difference-between-package-apt-yum-and-dnf-modules)
61. [How do you manage services using Ansible?](#61-how-do-you-manage-services-using-ansible)
62. [How do you create users and groups?](#62-how-do-you-create-users-and-groups)
63. [How do you manage files and directories?](#63-how-do-you-manage-files-and-directories)
64. [How do you change file permissions and ownership?](#64-how-do-you-change-file-permissions-and-ownership)
65. [How do you download files using get_url?](#65-how-do-you-download-files-using-get_url)
66. [How do you work with Git repositories using Ansible?](#66-how-do-you-work-with-git-repositories-using-ansible)
67. [How do you reboot servers using Ansible?](#67-how-do-you-reboot-servers-using-ansible)
68. [How do you wait for a port or service using wait_for?](#68-how-do-you-wait-for-a-port-or-service-using-wait_for)
69. [How do you mount filesystems using Ansible?](#69-how-do-you-mount-filesystems-using-ansible)
70. [How do you manage cron jobs using Ansible?](#70-how-do-you-manage-cron-jobs-using-ansible)

### Playbooks

71. [What is the basic structure of an Ansible playbook?](#71-what-is-the-basic-structure-of-an-ansible-playbook)
72. [How do you execute a playbook?](#72-how-do-you-execute-a-playbook)
73. [How do you run a playbook against a custom inventory?](#73-how-do-you-run-a-playbook-against-a-custom-inventory)
74. [How do you run only part of a playbook?](#74-how-do-you-run-only-part-of-a-playbook)
75. [What are tags in Ansible?](#75-what-are-tags-in-ansible)
76. [How do --tags and --skip-tags work?](#76-how-do-tags-and-skip-tags-work)
77. [How do you validate a playbook before execution?](#77-how-do-you-validate-a-playbook-before-execution)
78. [What does --syntax-check do?](#78-what-does-syntax-check-do)
79. [What does --check do?](#79-what-does-check-do)
80. [What does --diff do?](#80-what-does-diff-do)
81. [What does --list-hosts do?](#81-what-does-list-hosts-do)
82. [What does --list-tasks do?](#82-what-does-list-tasks-do)
83. [What does --list-tags do?](#83-what-does-list-tags-do)
84. [What are pre_tasks and post_tasks?](#84-what-are-pre_tasks-and-post_tasks)
85. [What is import_playbook?](#85-what-is-import_playbook)
86. [What is the difference between import_tasks and include_tasks?](#86-what-is-the-difference-between-import_tasks-and-include_tasks)
87. [What is the difference between static imports and dynamic includes?](#87-what-is-the-difference-between-static-imports-and-dynamic-includes)
88. [How do you pass extra variables to a playbook?](#88-how-do-you-pass-extra-variables-to-a-playbook)
89. [How do you prompt for variables at runtime?](#89-how-do-you-prompt-for-variables-at-runtime)
90. [How do you execute a task only once using run_once?](#90-how-do-you-execute-a-task-only-once-using-run_once)

### Variables, Facts and Jinja2

91. [What are variables in Ansible?](#91-what-are-variables-in-ansible)
92. [Where can variables be defined?](#92-where-can-variables-be-defined)
93. [What is variable precedence in Ansible?](#93-what-is-variable-precedence-in-ansible)
94. [What are extra vars and why do they have high precedence?](#94-what-are-extra-vars-and-why-do-they-have-high-precedence)
95. [How do you register task output in a variable?](#95-how-do-you-register-task-output-in-a-variable)
96. [How do you access registered output?](#96-how-do-you-access-registered-output)
97. [What are magic variables?](#97-what-are-magic-variables)
98. [What are hostvars, groups and group_names?](#98-what-are-hostvars-groups-and-group_names)
99. [What is inventory_hostname?](#99-what-is-inventory_hostname)
100. [What is ansible_facts?](#100-what-is-ansible_facts)
101. [How do you create custom facts?](#101-how-do-you-create-custom-facts)
102. [What is set_fact?](#102-what-is-set_fact)
103. [What is Jinja2?](#103-what-is-jinja2)
104. [How do you reference a variable in Jinja2?](#104-how-do-you-reference-a-variable-in-jinja2)
105. [What are Jinja2 filters?](#105-what-are-jinja2-filters)
106. [How do default filters help with undefined variables?](#106-how-do-default-filters-help-with-undefined-variables)
107. [How do you use conditionals with variables?](#107-how-do-you-use-conditionals-with-variables)
108. [How do you create a Jinja2 template?](#108-how-do-you-create-a-jinja2-template)
109. [How do you render different configuration values for different environments?](#109-how-do-you-render-different-configuration-values-for-different-environments)
110. [How do you protect secrets used inside templates?](#110-how-do-you-protect-secrets-used-inside-templates)

### Conditionals, Loops and Flow Control

111. [How does when work in Ansible?](#111-how-does-when-work-in-ansible)
112. [How do you use multiple conditions?](#112-how-do-you-use-multiple-conditions)
113. [How do loops work in Ansible?](#113-how-do-loops-work-in-ansible)
114. [What is loop_control?](#114-what-is-loop_control)
115. [What is the difference between loop and with_items?](#115-what-is-the-difference-between-loop-and-with_items)
116. [How do you loop over dictionaries?](#116-how-do-you-loop-over-dictionaries)
117. [How do you loop over nested data?](#117-how-do-you-loop-over-nested-data)
118. [How do you retry a task using until, retries and delay?](#118-how-do-you-retry-a-task-using-until-retries-and-delay)
119. [What is changed_when?](#119-what-is-changed_when)
120. [What is failed_when?](#120-what-is-failed_when)
121. [How do you skip a task based on OS family?](#121-how-do-you-skip-a-task-based-on-os-family)
122. [How do you execute different package modules for different Linux distributions?](#122-how-do-you-execute-different-package-modules-for-different-linux-distributions)
123. [How do you install different packages on Server A and Server B using a single playbook?](#123-how-do-you-install-different-packages-on-server-a-and-server-b-using-a-single-playbook)
124. [How do blocks work in Ansible?](#124-how-do-blocks-work-in-ansible)
125. [What are rescue and always blocks?](#125-what-are-rescue-and-always-blocks)

### Handlers, Error Handling and Reliability

126. [What is a handler in Ansible?](#126-what-is-a-handler-in-ansible)
127. [How does notify work?](#127-how-does-notify-work)
128. [When are handlers executed?](#128-when-are-handlers-executed)
129. [How do you restart a web service only when its configuration changes?](#129-how-do-you-restart-a-web-service-only-when-its-configuration-changes)
130. [What is meta: flush_handlers?](#130-what-is-meta-flush_handlers)
131. [How do you continue a playbook when a task fails?](#131-how-do-you-continue-a-playbook-when-a-task-fails)
132. [What does ignore_errors do?](#132-what-does-ignore_errors-do)
133. [What does ignore_unreachable do?](#133-what-does-ignore_unreachable-do)
134. [What is any_errors_fatal?](#134-what-is-any_errors_fatal)
135. [What is max_fail_percentage?](#135-what-is-max_fail_percentage)
136. [How do block/rescue/always improve error handling?](#136-how-do-blockrescuealways-improve-error-handling)
137. [How do you deliberately fail a play using fail?](#137-how-do-you-deliberately-fail-a-play-using-fail)
138. [How do you validate assumptions using assert?](#138-how-do-you-validate-assumptions-using-assert)
139. [How do you troubleshoot an unreachable host?](#139-how-do-you-troubleshoot-an-unreachable-host)
140. [How do you troubleshoot a failed Ansible task?](#140-how-do-you-troubleshoot-a-failed-ansible-task)

### Roles and Reusability

141. [What is an Ansible role?](#141-what-is-an-ansible-role)
142. [Why are roles important?](#142-why-are-roles-important)
143. [What is the standard directory structure of a role?](#143-what-is-the-standard-directory-structure-of-a-role)
144. [What belongs in tasks/main.yml?](#144-what-belongs-in-tasksmainyml)
145. [What belongs in handlers/main.yml?](#145-what-belongs-in-handlersmainyml)
146. [What belongs in defaults/main.yml?](#146-what-belongs-in-defaultsmainyml)
147. [What belongs in vars/main.yml?](#147-what-belongs-in-varsmainyml)
148. [What is the difference between role defaults and role vars?](#148-what-is-the-difference-between-role-defaults-and-role-vars)
149. [What belongs in templates and files directories?](#149-what-belongs-in-templates-and-files-directories)
150. [What is meta/main.yml?](#150-what-is-metamainyml)
151. [How do you create a role using ansible-galaxy?](#151-how-do-you-create-a-role-using-ansible-galaxy)
152. [How do you use a role in a playbook?](#152-how-do-you-use-a-role-in-a-playbook)
153. [How do you pass variables to roles?](#153-how-do-you-pass-variables-to-roles)
154. [What are role dependencies?](#154-what-are-role-dependencies)
155. [How do you create an Apache web-server role?](#155-how-do-you-create-an-apache-web-server-role)
156. [What is Ansible Galaxy?](#156-what-is-ansible-galaxy)
157. [How do you install a role from Ansible Galaxy?](#157-how-do-you-install-a-role-from-ansible-galaxy)
158. [How do you create reusable enterprise roles?](#158-how-do-you-create-reusable-enterprise-roles)
159. [How do you structure roles for dev, QA and production?](#159-how-do-you-structure-roles-for-dev-qa-and-production)
160. [How do collections differ from roles?](#160-how-do-collections-differ-from-roles)

### Vault, Secrets and Security

161. [What is Ansible Vault?](#161-what-is-ansible-vault)
162. [Why should you use Ansible Vault?](#162-why-should-you-use-ansible-vault)
163. [What types of data can Ansible Vault encrypt?](#163-what-types-of-data-can-ansible-vault-encrypt)
164. [How do you create an encrypted Vault file?](#164-how-do-you-create-an-encrypted-vault-file)
165. [How do you view an encrypted Vault file?](#165-how-do-you-view-an-encrypted-vault-file)
166. [How do you edit an encrypted Vault file?](#166-how-do-you-edit-an-encrypted-vault-file)
167. [How do you encrypt an existing file?](#167-how-do-you-encrypt-an-existing-file)
168. [How do you decrypt a Vault file?](#168-how-do-you-decrypt-a-vault-file)
169. [How do you change a Vault password?](#169-how-do-you-change-a-vault-password)
170. [How do you run a playbook that uses Vault?](#170-how-do-you-run-a-playbook-that-uses-vault)
171. [What is --ask-vault-pass?](#171-what-is-ask-vault-pass)
172. [What is a vault password file?](#172-what-is-a-vault-password-file)
173. [What are Vault IDs?](#173-what-are-vault-ids)
174. [How do you encrypt only a single variable?](#174-how-do-you-encrypt-only-a-single-variable)
175. [Should SSH passwords be stored in plaintext inventory?](#175-should-ssh-passwords-be-stored-in-plaintext-inventory)
176. [What is the preferred authentication method for Linux managed nodes?](#176-what-is-the-preferred-authentication-method-for-linux-managed-nodes)
177. [How do you integrate Ansible with HashiCorp Vault or an external secret manager?](#177-how-do-you-integrate-ansible-with-hashicorp-vault-or-an-external-secret-manager)
178. [How do you prevent secrets from appearing in logs?](#178-how-do-you-prevent-secrets-from-appearing-in-logs)
179. [What does no_log do?](#179-what-does-no_log-do)
180. [How would you secure Ansible in an enterprise CI/CD pipeline?](#180-how-would-you-secure-ansible-in-an-enterprise-cicd-pipeline)

### Advanced Execution and Performance

181. [What is Ansible's default execution strategy?](#181-what-is-ansibles-default-execution-strategy)
182. [What is the linear strategy?](#182-what-is-the-linear-strategy)
183. [What is the free strategy?](#183-what-is-the-free-strategy)
184. [What does serial do?](#184-what-does-serial-do)
185. [How do you perform a rolling deployment with serial?](#185-how-do-you-perform-a-rolling-deployment-with-serial)
186. [What is forks in Ansible?](#186-what-is-forks-in-ansible)
187. [How do you increase Ansible parallelism?](#187-how-do-you-increase-ansible-parallelism)
188. [What is throttle?](#188-what-is-throttle)
189. [What is async in Ansible?](#189-what-is-async-in-ansible)
190. [What is poll in Ansible?](#190-what-is-poll-in-ansible)
191. [How do you run a long-running task asynchronously?](#191-how-do-you-run-a-long-running-task-asynchronously)
192. [What is delegation in Ansible?](#192-what-is-delegation-in-ansible)
193. [What is delegate_to?](#193-what-is-delegate_to)
194. [What is local_action?](#194-what-is-local_action)
195. [How do you execute a task on the control node?](#195-how-do-you-execute-a-task-on-the-control-node)
196. [How do you execute a task on one host on behalf of another?](#196-how-do-you-execute-a-task-on-one-host-on-behalf-of-another)
197. [What is connection: local?](#197-what-is-connection-local)
198. [How do you optimize Ansible for hundreds or thousands of servers?](#198-how-do-you-optimize-ansible-for-hundreds-or-thousands-of-servers)
199. [What is fact caching?](#199-what-is-fact-caching)
200. [How can pipelining improve performance?](#200-how-can-pipelining-improve-performance)

### Testing, Linting and Troubleshooting

201. [How do you test Ansible playbooks safely?](#201-how-do-you-test-ansible-playbooks-safely)
202. [What is ansible-lint?](#202-what-is-ansible-lint)
203. [What is yamllint?](#203-what-is-yamllint)
204. [What is Molecule?](#204-what-is-molecule)
205. [How do you use Molecule to test roles?](#205-how-do-you-use-molecule-to-test-roles)
206. [What is check mode and what are its limitations?](#206-what-is-check-mode-and-what-are-its-limitations)
207. [How do you use diff mode?](#207-how-do-you-use-diff-mode)
208. [How do you increase Ansible verbosity?](#208-how-do-you-increase-ansible-verbosity)
209. [What is the difference between -v, -vv, -vvv and -vvvv?](#209-what-is-the-difference-between-v-vv-vvv-and-vvvv)
210. [How do you inspect the effective Ansible configuration?](#210-how-do-you-inspect-the-effective-ansible-configuration)
211. [How do you debug variables in a playbook?](#211-how-do-you-debug-variables-in-a-playbook)
212. [What is the debug module?](#212-what-is-the-debug-module)
213. [How do you identify why a host was skipped?](#213-how-do-you-identify-why-a-host-was-skipped)
214. [How do you identify why a handler did not run?](#214-how-do-you-identify-why-a-handler-did-not-run)
215. [How do you troubleshoot SSH authentication failures?](#215-how-do-you-troubleshoot-ssh-authentication-failures)
216. [How do you troubleshoot sudo/become failures?](#216-how-do-you-troubleshoot-sudobecome-failures)
217. [How do you troubleshoot Python interpreter problems on managed nodes?](#217-how-do-you-troubleshoot-python-interpreter-problems-on-managed-nodes)
218. [How do you troubleshoot YAML indentation or syntax errors?](#218-how-do-you-troubleshoot-yaml-indentation-or-syntax-errors)
219. [How do you troubleshoot undefined variables?](#219-how-do-you-troubleshoot-undefined-variables)
220. [How do you make troubleshooting output safe when secrets are involved?](#220-how-do-you-make-troubleshooting-output-safe-when-secrets-are-involved)

### CI/CD, Azure DevOps and Jenkins

221. [How do you integrate Ansible with Jenkins?](#221-how-do-you-integrate-ansible-with-jenkins)
222. [How do you integrate Ansible with Azure DevOps Pipelines?](#222-how-do-you-integrate-ansible-with-azure-devops-pipelines)
223. [Where should Ansible playbooks be stored in a CI/CD setup?](#223-where-should-ansible-playbooks-be-stored-in-a-cicd-setup)
224. [How do you validate Ansible code during pull requests?](#224-how-do-you-validate-ansible-code-during-pull-requests)
225. [Which Ansible checks should run before deployment?](#225-which-ansible-checks-should-run-before-deployment)
226. [How do you pass environment-specific inventory from a pipeline?](#226-how-do-you-pass-environment-specific-inventory-from-a-pipeline)
227. [How do you securely pass Vault credentials from CI/CD?](#227-how-do-you-securely-pass-vault-credentials-from-cicd)
228. [How do you use pipeline service connections or secret stores with Ansible?](#228-how-do-you-use-pipeline-service-connections-or-secret-stores-with-ansible)
229. [How do you design dev, QA, staging and production deployments with Ansible?](#229-how-do-you-design-dev-qa-staging-and-production-deployments-with-ansible)
230. [How do you add approvals before production Ansible deployment?](#230-how-do-you-add-approvals-before-production-ansible-deployment)
231. [How do you roll back an Ansible-based application deployment?](#231-how-do-you-roll-back-an-ansible-based-application-deployment)
232. [How do you make Ansible deployment artifacts traceable?](#232-how-do-you-make-ansible-deployment-artifacts-traceable)
233. [How do you use Ansible after Terraform provisioning?](#233-how-do-you-use-ansible-after-terraform-provisioning)
234. [What is the difference between Terraform and Ansible?](#234-what-is-the-difference-between-terraform-and-ansible)
235. [When would you use Terraform and Ansible together?](#235-when-would-you-use-terraform-and-ansible-together)
236. [How do you avoid configuration drift between Terraform and Ansible?](#236-how-do-you-avoid-configuration-drift-between-terraform-and-ansible)
237. [How would Jenkins trigger an Ansible deployment after a successful build?](#237-how-would-jenkins-trigger-an-ansible-deployment-after-a-successful-build)
238. [How do you deploy an application artifact using Ansible?](#238-how-do-you-deploy-an-application-artifact-using-ansible)
239. [How do you integrate health checks into an Ansible deployment?](#239-how-do-you-integrate-health-checks-into-an-ansible-deployment)
240. [How do you implement blue-green or canary-style deployment using Ansible?](#240-how-do-you-implement-blue-green-or-canary-style-deployment-using-ansible)

### Real-World and Scenario-Based Questions

241. [You have 2 servers in different locations. How do you copy files from Server1 to Server2 using Ansible?](#241-you-have-2-servers-in-different-locations-how-do-you-copy-files-from-server1-to-server2-using-ansible)
242. [You have packages that must be installed on Server A and different packages on Server B. How do you do this in one playbook?](#242-you-have-packages-that-must-be-installed-on-server-a-and-different-packages-on-server-b-how-do-you-do-this-in-one-playbook)
243. [How would you deploy a web application to 100 servers with minimal downtime?](#243-how-would-you-deploy-a-web-application-to-100-servers-with-minimal-downtime)
244. [How would you perform a rolling restart of application servers?](#244-how-would-you-perform-a-rolling-restart-of-application-servers)
245. [How do you ensure a service restarts only when its configuration changes?](#245-how-do-you-ensure-a-service-restarts-only-when-its-configuration-changes)
246. [A task fails on one host but you want remaining tasks to continue. What do you do?](#246-a-task-fails-on-one-host-but-you-want-remaining-tasks-to-continue-what-do-you-do)
247. [Some hosts are unreachable but the deployment should continue for reachable hosts. What do you do?](#247-some-hosts-are-unreachable-but-the-deployment-should-continue-for-reachable-hosts-what-do-you-do)
248. [How do you run the same playbook when different servers use different users and SSH ports?](#248-how-do-you-run-the-same-playbook-when-different-servers-use-different-users-and-ssh-ports)
249. [How do you deploy different configuration files to dev and production?](#249-how-do-you-deploy-different-configuration-files-to-dev-and-production)
250. [How do you safely rotate a database password managed by Ansible?](#250-how-do-you-safely-rotate-a-database-password-managed-by-ansible)
251. [How do you patch Linux servers using Ansible?](#251-how-do-you-patch-linux-servers-using-ansible)
252. [How do you reboot only servers that require reboot after patching?](#252-how-do-you-reboot-only-servers-that-require-reboot-after-patching)
253. [How do you create N users across M Linux machines?](#253-how-do-you-create-n-users-across-m-linux-machines)
254. [How do you install software only if it is not already installed?](#254-how-do-you-install-software-only-if-it-is-not-already-installed)
255. [How do you execute a task only on Red Hat systems?](#255-how-do-you-execute-a-task-only-on-red-hat-systems)
256. [How do you execute a task only when a file exists?](#256-how-do-you-execute-a-task-only-when-a-file-exists)
257. [How do you back up a configuration file before modifying it?](#257-how-do-you-back-up-a-configuration-file-before-modifying-it)
258. [How do you validate a configuration before restarting a service?](#258-how-do-you-validate-a-configuration-before-restarting-a-service)
259. [How do you stop a deployment if a health check fails?](#259-how-do-you-stop-a-deployment-if-a-health-check-fails)
260. [How do you collect deployment results from all hosts?](#260-how-do-you-collect-deployment-results-from-all-hosts)
261. [How do you deploy an application from JFrog/Artifactory using Ansible?](#261-how-do-you-deploy-an-application-from-jfrogartifactory-using-ansible)
262. [How do you manage environment-specific secrets without duplicating playbooks?](#262-how-do-you-manage-environment-specific-secrets-without-duplicating-playbooks)
263. [How do you perform database changes before application deployment?](#263-how-do-you-perform-database-changes-before-application-deployment)
264. [How do you drain a server from a load balancer before deployment and add it back afterward?](#264-how-do-you-drain-a-server-from-a-load-balancer-before-deployment-and-add-it-back-afterward)
265. [How do you limit production blast radius when using Ansible?](#265-how-do-you-limit-production-blast-radius-when-using-ansible)
266. [How do you recover from a partially completed Ansible deployment?](#266-how-do-you-recover-from-a-partially-completed-ansible-deployment)

### Expert Architecture and Interview Discussion

267. [Explain Ansible's architecture end-to-end.](#267-explain-ansibles-architecture-end-to-end)
268. [Explain push-based and pull-based configuration management.](#268-explain-push-based-and-pull-based-configuration-management)
269. [Can Ansible work in both push and pull models?](#269-can-ansible-work-in-both-push-and-pull-models)
270. [How does ansible-pull work?](#270-how-does-ansible-pull-work)
271. [How does Ansible achieve idempotency?](#271-how-does-ansible-achieve-idempotency)
272. [How do you design idempotent custom automation?](#272-how-do-you-design-idempotent-custom-automation)
273. [What are custom modules and when would you create one?](#273-what-are-custom-modules-and-when-would-you-create-one)
274. [What are plugins in Ansible?](#274-what-are-plugins-in-ansible)
275. [What are callback plugins?](#275-what-are-callback-plugins)
276. [What are lookup plugins?](#276-what-are-lookup-plugins)
277. [What are filter plugins?](#277-what-are-filter-plugins)
278. [What are connection plugins?](#278-what-are-connection-plugins)
279. [What are Ansible collections?](#279-what-are-ansible-collections)
280. [How do you create and distribute an internal collection?](#280-how-do-you-create-and-distribute-an-internal-collection)
281. [What is AWX?](#281-what-is-awx)
282. [What is Red Hat Ansible Automation Platform?](#282-what-is-red-hat-ansible-automation-platform)
283. [What benefits does an automation controller provide over CLI-only Ansible?](#283-what-benefits-does-an-automation-controller-provide-over-cli-only-ansible)
284. [How do you implement RBAC for enterprise Ansible automation?](#284-how-do-you-implement-rbac-for-enterprise-ansible-automation)
285. [How do you manage credentials centrally in enterprise Ansible?](#285-how-do-you-manage-credentials-centrally-in-enterprise-ansible)
286. [How do you schedule Ansible jobs?](#286-how-do-you-schedule-ansible-jobs)
287. [How do you design an Ansible repository for a large enterprise?](#287-how-do-you-design-an-ansible-repository-for-a-large-enterprise)
288. [How do you version roles and collections?](#288-how-do-you-version-roles-and-collections)
289. [How do you prevent teams from creating unsafe playbooks?](#289-how-do-you-prevent-teams-from-creating-unsafe-playbooks)
290. [How do you enforce coding standards for Ansible?](#290-how-do-you-enforce-coding-standards-for-ansible)
291. [How do you make Ansible deployments auditable?](#291-how-do-you-make-ansible-deployments-auditable)
292. [How do you design disaster-recovery automation using Ansible?](#292-how-do-you-design-disaster-recovery-automation-using-ansible)

------------------------------------------------------------------------

# Answers

## Beginner Fundamentals

### 1. What is Ansible and why is it used?

**Ansible and why is it used** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 2. What are the main features of Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 3. How is Ansible different from other configuration-management tools?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 4. What is agentless architecture in Ansible?

**agentless architecture in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 5. What are the prerequisites for using Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 6. What is an Ansible control node?

**an Ansible control node** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 7. What is a managed node?

**a managed node** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 8. Which protocols does Ansible use to communicate with managed nodes?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 9. What is an Ansible inventory?

**an Ansible inventory** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 10. What is the default inventory file location?

**the default inventory file location** is an Ansible concept used to
make infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 11. What inventory formats does Ansible support?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 12. What is an ad hoc command?

**an ad hoc command** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 13. When should you use ad hoc commands versus playbooks?

Use **ad hoc commands** for quick, one-time operations such as pinging
hosts, checking uptime, rebooting a set of servers, copying a one-off
file, or inspecting a package. Use **playbooks** when the automation is
repeatable, multi-step, version-controlled, reusable, or needs
orchestration across groups of hosts.

``` bash
ansible all -m ping
ansible web -m service -a "name=httpd state=restarted" -b
```

A playbook is preferable for production because the desired state is
captured as code and can be reviewed and rerun.

[⬆ Back to Question Index](#question-index)

---

### 14. What is an Ansible module?

**an Ansible module** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 15. What is an Ansible playbook?

**an Ansible playbook** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 16. What is a play in Ansible?

**a play in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 17. What is a task in Ansible?

**a task in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 18. What is YAML and why does Ansible use it?

**YAML and why does Ansible use it** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 19. What does idempotency mean in Ansible?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 20. How do you install Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 21. How do you check the installed Ansible version?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 22. How do you test connectivity to managed nodes?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 23. What is the ansible.cfg file?

**the ansible.cfg file** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 24. What is the order of precedence for ansible.cfg?

**the order of precedence for ansible.cfg** is an Ansible concept used
to make infrastructure/configuration automation declarative, repeatable
and maintainable. In an interview, explain **what it is, where it is
used, and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 25. What is privilege escalation in Ansible?

**privilege escalation in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 26. What is become in Ansible?

**become in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 27. What is the difference between become, become_user and become_method?

**the difference between become, become_user and become_method** is an
Ansible concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 28. What are facts in Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 29. What does gather_facts do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 30. What is the setup module?

**the setup module** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

## Inventory and Host Management

### 31. How do you create a static inventory?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 32. What are inventory groups?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 33. How do you create parent and child groups?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 34. What are host variables?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 35. What are group variables?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 36. What are group_vars and host_vars directories?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 37. What is dynamic inventory?

**dynamic inventory** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 38. When would you use dynamic inventory?

Choose the approach based on repeatability, risk, scale and operational
ownership. One-time diagnostics can use ad hoc commands; repeatable or
production work belongs in version-controlled playbooks/roles with
validation, security controls and clear rollback/recovery behavior.

[⬆ Back to Question Index](#question-index)

---

### 39. How can Ansible dynamically discover Azure or cloud hosts?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 40. How do you specify a custom inventory file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 41. How do you list all hosts in an inventory?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 42. How do you list hosts matched by a pattern?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 43. How do host patterns work in Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 44. How do you target multiple groups?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 45. How do you exclude hosts from a play?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 46. How do you run the same playbook on nodes using different SSH ports and usernames?

Define connection variables per host or group in inventory:

``` ini
[app]
app01 ansible_host=10.0.1.10 ansible_user=deploy ansible_port=22
app02 ansible_host=10.0.2.10 ansible_user=ansible ansible_port=2200
```

Then test:

``` bash
ansible app -i inventory.ini -m ping
ansible-playbook -i inventory.ini site.yml
```

Prefer SSH key authentication rather than plaintext passwords in
inventory.

[⬆ Back to Question Index](#question-index)

---

### 47. How do you configure ansible_host?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 48. How do you configure ansible_user?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 49. How do you configure ansible_port?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 50. How do you use SSH keys with Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Modules and Ad Hoc Commands

### 51. What are commonly used Ansible modules?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 52. How do you execute a shell command with Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 53. What is the difference between command and shell modules?

**the difference between command and shell modules** is an Ansible
concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 54. When should you avoid the shell module?

Choose the approach based on repeatability, risk, scale and operational
ownership. One-time diagnostics can use ad hoc commands; repeatable or
production work belongs in version-controlled playbooks/roles with
validation, security controls and clear rollback/recovery behavior.

[⬆ Back to Question Index](#question-index)

---

### 55. How do you copy a file to remote servers?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 56. What is the difference between copy and template modules?

**the difference between copy and template modules** is an Ansible
concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 57. How do you fetch a file from a remote host?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 58. How do you synchronize directories with Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 59. How do you install packages using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 60. What is the difference between package, apt, yum and dnf modules?

**the difference between package, apt, yum and dnf modules** is an
Ansible concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 61. How do you manage services using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 62. How do you create users and groups?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 63. How do you manage files and directories?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 64. How do you change file permissions and ownership?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 65. How do you download files using get_url?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 66. How do you work with Git repositories using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 67. How do you reboot servers using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 68. How do you wait for a port or service using wait_for?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 69. How do you mount filesystems using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 70. How do you manage cron jobs using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Playbooks

### 71. What is the basic structure of an Ansible playbook?

**the basic structure of an Ansible playbook** is an Ansible concept
used to make infrastructure/configuration automation declarative,
repeatable and maintainable. In an interview, explain **what it is,
where it is used, and why it matters operationally**. Prefer
built-in/FQCN modules, idempotent tasks, version-controlled YAML, and
least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 72. How do you execute a playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 73. How do you run a playbook against a custom inventory?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 74. How do you run only part of a playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 75. What are tags in Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 76. How do --tags and --skip-tags work?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 77. How do you validate a playbook before execution?

Use several layers:

``` bash
ansible-playbook site.yml --syntax-check
ansible-playbook -i inventory site.yml --list-hosts
ansible-playbook -i inventory site.yml --list-tasks
ansible-playbook -i inventory site.yml --check
ansible-playbook -i inventory site.yml --check --diff
ansible-lint site.yml
yamllint .
```

For reusable roles, add **Molecule** tests. `--check` is a dry-run
prediction; not every module supports check mode perfectly, so it does
not replace testing in a non-production environment.

[⬆ Back to Question Index](#question-index)

---

### 78. What does --syntax-check do?

`ansible-playbook site.yml --syntax-check` parses the playbook and
reports syntax problems without executing tasks. It does not prove
runtime correctness.

[⬆ Back to Question Index](#question-index)

---

### 79. What does --check do?

`--check` requests check/dry-run mode. Supporting modules predict
whether they would change the host without applying the change. Some
modules cannot fully simulate their behavior.

[⬆ Back to Question Index](#question-index)

---

### 80. What does --diff do?

`--diff` shows before/after differences for supported modules,
especially files/templates. Avoid it when sensitive content could be
exposed.

[⬆ Back to Question Index](#question-index)

---

### 81. What does --list-hosts do?

It displays the hosts that a playbook/host pattern would target without
running the playbook.

[⬆ Back to Question Index](#question-index)

---

### 82. What does --list-tasks do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 83. What does --list-tags do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 84. What are pre_tasks and post_tasks?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 85. What is import_playbook?

**import_playbook** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 86. What is the difference between import_tasks and include_tasks?

**the difference between import_tasks and include_tasks** is an Ansible
concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 87. What is the difference between static imports and dynamic includes?

**the difference between static imports and dynamic includes** is an
Ansible concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 88. How do you pass extra variables to a playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 89. How do you prompt for variables at runtime?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 90. How do you execute a task only once using run_once?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Variables, Facts and Jinja2

### 91. What are variables in Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 92. Where can variables be defined?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 93. What is variable precedence in Ansible?

**variable precedence in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 94. What are extra vars and why do they have high precedence?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 95. How do you register task output in a variable?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 96. How do you access registered output?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 97. What are magic variables?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 98. What are hostvars, groups and group_names?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 99. What is inventory_hostname?

**inventory_hostname** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 100. What is ansible_facts?

**ansible_facts** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 101. How do you create custom facts?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 102. What is set_fact?

`set_fact` creates host-level variables during a play. Use it for values
derived at runtime; avoid unnecessary state when normal variables are
sufficient.

[⬆ Back to Question Index](#question-index)

---

### 103. What is Jinja2?

**Jinja2** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 104. How do you reference a variable in Jinja2?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 105. What are Jinja2 filters?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 106. How do default filters help with undefined variables?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 107. How do you use conditionals with variables?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 108. How do you create a Jinja2 template?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 109. How do you render different configuration values for different environments?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 110. How do you protect secrets used inside templates?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Conditionals, Loops and Flow Control

### 111. How does when work in Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 112. How do you use multiple conditions?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 113. How do loops work in Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 114. What is loop_control?

**loop_control** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 115. What is the difference between loop and with_items?

**the difference between loop and with_items** is an Ansible concept
used to make infrastructure/configuration automation declarative,
repeatable and maintainable. In an interview, explain **what it is,
where it is used, and why it matters operationally**. Prefer
built-in/FQCN modules, idempotent tasks, version-controlled YAML, and
least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 116. How do you loop over dictionaries?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 117. How do you loop over nested data?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 118. How do you retry a task using until, retries and delay?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 119. What is changed_when?

`changed_when` overrides Ansible's decision about whether a task changed
state. It is useful for commands/scripts whose return value needs custom
interpretation.

[⬆ Back to Question Index](#question-index)

---

### 120. What is failed_when?

`failed_when` defines custom failure conditions using task result fields
such as `rc`, `stdout` or `stderr`.

[⬆ Back to Question Index](#question-index)

---

### 121. How do you skip a task based on OS family?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 122. How do you execute different package modules for different Linux distributions?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 123. How do you install different packages on Server A and Server B using a single playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 124. How do blocks work in Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 125. What are rescue and always blocks?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

## Handlers, Error Handling and Reliability

### 126. What is a handler in Ansible?

**a handler in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 127. How does notify work?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 128. When are handlers executed?

Choose the approach based on repeatability, risk, scale and operational
ownership. One-time diagnostics can use ad hoc commands; repeatable or
production work belongs in version-controlled playbooks/roles with
validation, security controls and clear rollback/recovery behavior.

[⬆ Back to Question Index](#question-index)

---

### 129. How do you restart a web service only when its configuration changes?

Use a **handler**. A configuration task sends a notification only when
it reports `changed`.

``` yaml
tasks:
  - name: Deploy Apache configuration
    ansible.builtin.template:
      src: httpd.conf.j2
      dest: /etc/httpd/conf/httpd.conf
      validate: "httpd -t -f %s"
    notify: Restart Apache

handlers:
  - name: Restart Apache
    ansible.builtin.service:
      name: httpd
      state: restarted
```

If the template is already identical, the task is `ok`, no notification
is queued, and Apache is not restarted.

[⬆ Back to Question Index](#question-index)

---

### 130. What is meta: flush_handlers?

**meta: flush_handlers** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 131. How do you continue a playbook when a task fails?

Normally a failed task stops further tasks for that host. For a failure
that is explicitly acceptable, use:

``` yaml
- name: Optional operation
  ansible.builtin.command: /opt/tools/optional-check
  ignore_errors: true
```

For robust production logic, prefer `block` / `rescue` / `always` or
precise `failed_when` conditions instead of broadly ignoring errors.

[⬆ Back to Question Index](#question-index)

---

### 132. What does ignore_errors do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 133. What does ignore_unreachable do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 134. What is any_errors_fatal?

**any_errors_fatal** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 135. What is max_fail_percentage?

**max_fail_percentage** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 136. How do block/rescue/always improve error handling?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 137. How do you deliberately fail a play using fail?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 138. How do you validate assumptions using assert?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 139. How do you troubleshoot an unreachable host?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 140. How do you troubleshoot a failed Ansible task?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Roles and Reusability

### 141. What is an Ansible role?

**an Ansible role** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 142. Why are roles important?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 143. What is the standard directory structure of a role?

**the standard directory structure of a role** is an Ansible concept
used to make infrastructure/configuration automation declarative,
repeatable and maintainable. In an interview, explain **what it is,
where it is used, and why it matters operationally**. Prefer
built-in/FQCN modules, idempotent tasks, version-controlled YAML, and
least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 144. What belongs in tasks/main.yml?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 145. What belongs in handlers/main.yml?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 146. What belongs in defaults/main.yml?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 147. What belongs in vars/main.yml?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 148. What is the difference between role defaults and role vars?

**the difference between role defaults and role vars** is an Ansible
concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 149. What belongs in templates and files directories?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 150. What is meta/main.yml?

**meta/main.yml** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 151. How do you create a role using ansible-galaxy?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 152. How do you use a role in a playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 153. How do you pass variables to roles?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 154. What are role dependencies?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 155. How do you create an Apache web-server role?

Create the role and put responsibilities into the standard directories:

``` bash
ansible-galaxy role init apache_role
```

`roles/apache_role/tasks/main.yml`:

``` yaml
- name: Install Apache
  ansible.builtin.package:
    name: "{{ apache_package }}"
    state: present

- name: Deploy index page
  ansible.builtin.template:
    src: index.html.j2
    dest: /var/www/html/index.html
  notify: Restart Apache

- name: Ensure Apache is enabled and running
  ansible.builtin.service:
    name: "{{ apache_service }}"
    state: started
    enabled: true
```

`roles/apache_role/handlers/main.yml`:

``` yaml
- name: Restart Apache
  ansible.builtin.service:
    name: "{{ apache_service }}"
    state: restarted
```

A role makes complex automation easier to reuse, test, share and
maintain.

[⬆ Back to Question Index](#question-index)

---

### 156. What is Ansible Galaxy?

**Ansible Galaxy** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 157. How do you install a role from Ansible Galaxy?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 158. How do you create reusable enterprise roles?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 159. How do you structure roles for dev, QA and production?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 160. How do collections differ from roles?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Vault, Secrets and Security

### 161. What is Ansible Vault?

Ansible Vault encrypts sensitive Ansible data such as passwords, API
keys, tokens, variable files, or other confidential values so they are
not stored as plaintext in source control.

``` bash
ansible-vault create secrets.yml
ansible-vault view secrets.yml
ansible-vault edit secrets.yml
ansible-vault encrypt existing.yml
ansible-vault decrypt existing.yml
ansible-playbook site.yml --ask-vault-pass
```

In CI/CD, use a protected secret source or vault identity/password file
supplied securely at runtime rather than committing the Vault password.

[⬆ Back to Question Index](#question-index)

---

### 162. Why should you use Ansible Vault?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 163. What types of data can Ansible Vault encrypt?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 164. How do you create an encrypted Vault file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 165. How do you view an encrypted Vault file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 166. How do you edit an encrypted Vault file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 167. How do you encrypt an existing file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 168. How do you decrypt a Vault file?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 169. How do you change a Vault password?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 170. How do you run a playbook that uses Vault?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 171. What is --ask-vault-pass?

**--ask-vault-pass** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 172. What is a vault password file?

**a vault password file** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 173. What are Vault IDs?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 174. How do you encrypt only a single variable?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 175. Should SSH passwords be stored in plaintext inventory?

Generally, avoid plaintext credentials and unmanaged configuration. Use
SSH keys or controlled identities, encrypted/external secrets, least
privilege, protected CI/CD credentials and auditability.

[⬆ Back to Question Index](#question-index)

---

### 176. What is the preferred authentication method for Linux managed nodes?

**the preferred authentication method for Linux managed nodes** is an
Ansible concept used to make infrastructure/configuration automation
declarative, repeatable and maintainable. In an interview, explain
**what it is, where it is used, and why it matters operationally**.
Prefer built-in/FQCN modules, idempotent tasks, version-controlled YAML,
and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 177. How do you integrate Ansible with HashiCorp Vault or an external secret manager?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 178. How do you prevent secrets from appearing in logs?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 179. What does no_log do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 180. How would you secure Ansible in an enterprise CI/CD pipeline?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Advanced Execution and Performance

### 181. What is Ansible's default execution strategy?

**Ansible's default execution strategy** is an Ansible concept used to
make infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 182. What is the linear strategy?

**the linear strategy** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 183. What is the free strategy?

**the free strategy** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 184. What does serial do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 185. How do you perform a rolling deployment with serial?

Use `serial` to restrict how many hosts are changed in each batch:

``` yaml
- hosts: app_servers
  serial: 2
  max_fail_percentage: 20
  tasks:
    - name: Deploy release
      ansible.builtin.unarchive:
        src: app-1.8.0.tar.gz
        dest: /opt/app
    - name: Restart application
      ansible.builtin.service:
        name: myapp
        state: restarted
```

In production, combine this with load-balancer drain/add-back tasks,
health checks, and a failure threshold.

[⬆ Back to Question Index](#question-index)

---

### 186. What is forks in Ansible?

`forks` controls how many hosts Ansible can work on concurrently.
Increase it carefully based on controller capacity, network limits and
target-system constraints.

[⬆ Back to Question Index](#question-index)

---

### 187. How do you increase Ansible parallelism?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 188. What is throttle?

**throttle** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 189. What is async in Ansible?

**async in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 190. What is poll in Ansible?

**poll in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 191. How do you run a long-running task asynchronously?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 192. What is delegation in Ansible?

**delegation in Ansible** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 193. What is delegate_to?

`delegate_to` runs a specific task on another host while the play
remains associated with the current inventory host; common examples are
load-balancer changes or controller-side API calls.

[⬆ Back to Question Index](#question-index)

---

### 194. What is local_action?

**local_action** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 195. How do you execute a task on the control node?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 196. How do you execute a task on one host on behalf of another?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 197. What is connection: local?

**connection: local** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 198. How do you optimize Ansible for hundreds or thousands of servers?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 199. What is fact caching?

**fact caching** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 200. How can pipelining improve performance?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Testing, Linting and Troubleshooting

### 201. How do you test Ansible playbooks safely?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 202. What is ansible-lint?

**ansible-lint** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 203. What is yamllint?

**yamllint** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 204. What is Molecule?

**Molecule** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 205. How do you use Molecule to test roles?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 206. What is check mode and what are its limitations?

**check mode and what are its limitations** is an Ansible concept used
to make infrastructure/configuration automation declarative, repeatable
and maintainable. In an interview, explain **what it is, where it is
used, and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 207. How do you use diff mode?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 208. How do you increase Ansible verbosity?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 209. What is the difference between -v, -vv, -vvv and -vvvv?

**the difference between -v, -vv, -vvv and -vvvv** is an Ansible concept
used to make infrastructure/configuration automation declarative,
repeatable and maintainable. In an interview, explain **what it is,
where it is used, and why it matters operationally**. Prefer
built-in/FQCN modules, idempotent tasks, version-controlled YAML, and
least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 210. How do you inspect the effective Ansible configuration?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 211. How do you debug variables in a playbook?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 212. What is the debug module?

**the debug module** is an Ansible concept used to make
infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 213. How do you identify why a host was skipped?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 214. How do you identify why a handler did not run?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 215. How do you troubleshoot SSH authentication failures?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 216. How do you troubleshoot sudo/become failures?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 217. How do you troubleshoot Python interpreter problems on managed nodes?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 218. How do you troubleshoot YAML indentation or syntax errors?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 219. How do you troubleshoot undefined variables?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 220. How do you make troubleshooting output safe when secrets are involved?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## CI/CD, Azure DevOps and Jenkins

### 221. How do you integrate Ansible with Jenkins?

A typical flow is **Git checkout → lint/test → retrieve credentials →
run playbook → verify deployment**.

``` groovy
stage('Ansible Lint') {
  steps { sh 'ansible-lint ansible/' }
}
stage('Deploy') {
  steps {
    sh 'ansible-playbook -i ansible/inventory/prod ansible/site.yml'
  }
}
```

Production pipelines should use Jenkins credentials or an external
secrets manager, approvals, immutable artifact versions, restricted
service identities, logs, and post-deployment health checks.

[⬆ Back to Question Index](#question-index)

---

### 222. How do you integrate Ansible with Azure DevOps Pipelines?

Keep playbooks/roles in Git and execute them from a controlled agent.

``` yaml
steps:
- script: |
    python -m pip install ansible ansible-lint
    ansible-lint ansible/
    ansible-playbook ansible/site.yml       -i ansible/inventory/prod
  displayName: Validate and deploy with Ansible
```

Use Azure DevOps secret variables/variable groups or an external secret
store for credentials. Add environment approvals/checks for production
and publish deployment logs/results.

[⬆ Back to Question Index](#question-index)

---

### 223. Where should Ansible playbooks be stored in a CI/CD setup?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 224. How do you validate Ansible code during pull requests?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 225. Which Ansible checks should run before deployment?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 226. How do you pass environment-specific inventory from a pipeline?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 227. How do you securely pass Vault credentials from CI/CD?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 228. How do you use pipeline service connections or secret stores with Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 229. How do you design dev, QA, staging and production deployments with Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 230. How do you add approvals before production Ansible deployment?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 231. How do you roll back an Ansible-based application deployment?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 232. How do you make Ansible deployment artifacts traceable?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 233. How do you use Ansible after Terraform provisioning?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 234. What is the difference between Terraform and Ansible?

**Terraform** is primarily infrastructure provisioning and
lifecycle/state management: VNets, VMs, load balancers, databases,
Kubernetes clusters, etc. **Ansible** is primarily configuration
management, application deployment, orchestration and operational
automation inside/across those resources.

A common pattern is: **Terraform provisions infrastructure → outputs
inventory/connection data → Ansible configures OS/middleware and deploys
applications.**

[⬆ Back to Question Index](#question-index)

---

### 235. When would you use Terraform and Ansible together?

Choose the approach based on repeatability, risk, scale and operational
ownership. One-time diagnostics can use ad hoc commands; repeatable or
production work belongs in version-controlled playbooks/roles with
validation, security controls and clear rollback/recovery behavior.

[⬆ Back to Question Index](#question-index)

---

### 236. How do you avoid configuration drift between Terraform and Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 237. How would Jenkins trigger an Ansible deployment after a successful build?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 238. How do you deploy an application artifact using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 239. How do you integrate health checks into an Ansible deployment?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 240. How do you implement blue-green or canary-style deployment using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Real-World and Scenario-Based Questions

### 241. You have 2 servers in different locations. How do you copy files from Server1 to Server2 using Ansible?

Ansible's `copy` module copies **from the control node to a managed
node**, not directly remote-to-remote. A reliable two-step method is
`fetch` from Server1 and `copy` to Server2.

Inventory:

``` ini
[source]
server1 ansible_host=10.1.0.10

[destination]
server2 ansible_host=10.2.0.10
```

Playbook:

``` yaml
---
- name: Fetch from Server1
  hosts: source
  become: true
  tasks:
    - name: Fetch application archive
      ansible.builtin.fetch:
        src: /opt/data/app.tar.gz
        dest: /tmp/transfer/app.tar.gz
        flat: true

- name: Copy to Server2
  hosts: destination
  become: true
  tasks:
    - name: Copy application archive
      ansible.builtin.copy:
        src: /tmp/transfer/app.tar.gz
        dest: /opt/data/app.tar.gz
        mode: "0644"
```

For very large data sets, `synchronize`/rsync or an artifact/object
store can be more efficient.

[⬆ Back to Question Index](#question-index)

---

### 242. You have packages that must be installed on Server A and different packages on Server B. How do you do this in one playbook?

Keep host-specific data in inventory variables and use one generic task.

``` ini
[servers]
serverA
serverB

[servers:vars]
# common variables can go here
```

`host_vars/serverA.yml`:

``` yaml
packages:
  - nginx
  - git
```

`host_vars/serverB.yml`:

``` yaml
packages:
  - httpd
  - unzip
```

Playbook:

``` yaml
---
- name: Install host-specific packages
  hosts: servers
  become: true
  tasks:
    - name: Install required packages
      ansible.builtin.package:
        name: "{{ packages }}"
        state: present
```

This separates **data from logic**, so the playbook remains reusable.

[⬆ Back to Question Index](#question-index)

---

### 243. How would you deploy a web application to 100 servers with minimal downtime?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 244. How would you perform a rolling restart of application servers?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 245. How do you ensure a service restarts only when its configuration changes?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 246. A task fails on one host but you want remaining tasks to continue. What do you do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 247. Some hosts are unreachable but the deployment should continue for reachable hosts. What do you do?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 248. How do you run the same playbook when different servers use different users and SSH ports?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 249. How do you deploy different configuration files to dev and production?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 250. How do you safely rotate a database password managed by Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 251. How do you patch Linux servers using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 252. How do you reboot only servers that require reboot after patching?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 253. How do you create N users across M Linux machines?

Put the target machines in an inventory group and loop over a
data-driven user list:

``` yaml
---
- hosts: linux_servers
  become: true
  vars:
    users:
      - { name: dev1, groups: "developers" }
      - { name: dev2, groups: "developers" }
      - { name: ops1, groups: "operations" }

  tasks:
    - name: Ensure users exist
      ansible.builtin.user:
        name: "{{ item.name }}"
        groups: "{{ item.groups }}"
        append: true
        state: present
      loop: "{{ users }}"
```

For enterprise use, store user data in `group_vars`, a controlled data
source, or an identity-management workflow.

[⬆ Back to Question Index](#question-index)

---

### 254. How do you install software only if it is not already installed?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 255. How do you execute a task only on Red Hat systems?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 256. How do you execute a task only when a file exists?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 257. How do you back up a configuration file before modifying it?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 258. How do you validate a configuration before restarting a service?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 259. How do you stop a deployment if a health check fails?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 260. How do you collect deployment results from all hosts?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 261. How do you deploy an application from JFrog/Artifactory using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 262. How do you manage environment-specific secrets without duplicating playbooks?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 263. How do you perform database changes before application deployment?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 264. How do you drain a server from a load balancer before deployment and add it back afterward?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 265. How do you limit production blast radius when using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 266. How do you recover from a partially completed Ansible deployment?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Expert Architecture and Interview Discussion

### 267. Explain Ansible's architecture end-to-end.

Explain the flow from the control node and inventory through variable
resolution, module execution on managed nodes, result collection,
handlers/error handling and final verification. Relate the concept to a
production deployment rather than giving only a definition.

[⬆ Back to Question Index](#question-index)

---

### 268. Explain push-based and pull-based configuration management.

In a **push model**, the controller initiates configuration and sends
desired changes to managed nodes. Standard Ansible CLI/playbook
execution is predominantly push-based over SSH/WinRM.

In a **pull model**, each node periodically retrieves and applies its
configuration. Ansible supports this pattern through `ansible-pull`,
commonly scheduled on managed nodes.

Push gives centralized, immediate orchestration; pull can be useful for
very large or intermittently connected fleets.

[⬆ Back to Question Index](#question-index)

---

### 269. Can Ansible work in both push and pull models?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 270. How does ansible-pull work?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 271. How does Ansible achieve idempotency?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 272. How do you design idempotent custom automation?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 273. What are custom modules and when would you create one?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 274. What are plugins in Ansible?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 275. What are callback plugins?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 276. What are lookup plugins?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 277. What are filter plugins?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 278. What are connection plugins?

The key points are to identify the relevant Ansible components, explain
their purpose, and connect them to a real deployment. In production,
favor idempotency, reusable roles/collections, inventory-driven
configuration, secure credentials, linting/testing, and observable
execution.

[⬆ Back to Question Index](#question-index)

---

### 279. What are Ansible collections?

Collections package related roles, modules, plugins, documentation and
playbooks under a namespace such as `community.general`, making Ansible
content easier to version and distribute.

[⬆ Back to Question Index](#question-index)

---

### 280. How do you create and distribute an internal collection?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 281. What is AWX?

AWX is the upstream web/API-based automation controller project for
Ansible, providing inventories, credentials, job templates, scheduling,
RBAC and centralized job history.

[⬆ Back to Question Index](#question-index)

---

### 282. What is Red Hat Ansible Automation Platform?

**Red Hat Ansible Automation Platform** is an Ansible concept used to
make infrastructure/configuration automation declarative, repeatable and
maintainable. In an interview, explain **what it is, where it is used,
and why it matters operationally**. Prefer built-in/FQCN modules,
idempotent tasks, version-controlled YAML, and least-privilege access.

[⬆ Back to Question Index](#question-index)

---

### 283. What benefits does an automation controller provide over CLI-only Ansible?

A strong interview answer should cover the **requirement, Ansible
mechanism, implementation approach, security/error handling, and
verification**. Emphasize idempotency, reuse, source control, testing
and production-safe rollout.

[⬆ Back to Question Index](#question-index)

---

### 284. How do you implement RBAC for enterprise Ansible automation?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 285. How do you manage credentials centrally in enterprise Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 286. How do you schedule Ansible jobs?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 287. How do you design an Ansible repository for a large enterprise?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 288. How do you version roles and collections?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 289. How do you prevent teams from creating unsafe playbooks?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 290. How do you enforce coding standards for Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 291. How do you make Ansible deployments auditable?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

### 292. How do you design disaster-recovery automation using Ansible?

Implement this as **data-driven, idempotent automation**: keep
host/environment differences in inventory variables, use the appropriate
Ansible module instead of raw shell where possible, validate inputs,
handle failures explicitly, protect credentials, and verify the
resulting state. For production changes, test with
syntax/lint/check-mode where applicable and deploy in controlled
batches.

[⬆ Back to Question Index](#question-index)

---

## Practical Command & Playbook Appendix

### Pre-execution verification cheat sheet

``` bash
ansible-playbook site.yml --syntax-check
ansible-playbook -i inventory site.yml --list-hosts
ansible-playbook -i inventory site.yml --list-tasks
ansible-playbook -i inventory site.yml --check
ansible-playbook -i inventory site.yml --check --diff
ansible-lint site.yml
yamllint .
```

### Vault cheat sheet

``` bash
ansible-vault create secrets.yml
ansible-vault view secrets.yml
ansible-vault edit secrets.yml
ansible-vault encrypt secrets.yml
ansible-vault decrypt secrets.yml
ansible-playbook -i inventory site.yml --ask-vault-pass
```

### Useful ad hoc commands

``` bash
ansible all -m ping
ansible all -m setup
ansible web -b -m package -a 'name=nginx state=present'
ansible web -b -m service -a 'name=nginx state=started enabled=true'
ansible all -m command -a 'uptime'
```

### Production answer framework

For scenario questions, answer in this order: **inventory/targeting →
variables/data → module/role → idempotency → secrets/security → error
handling → rollout strategy → validation/health check →
rollback/recovery → CI/CD/auditability**.
