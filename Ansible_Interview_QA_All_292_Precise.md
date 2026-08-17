# Ansible Interview Questions & Answers — Precise Edition
> All 292 questions from the supplied handbook are retained. Answers are rewritten to be direct, interview-ready, and question-specific.
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

---

# Answers

## Beginner Fundamentals

### 1. What is Ansible and why is it used?

Ansible is an open-source automation tool used for configuration management, application deployment, provisioning and orchestration. It uses YAML playbooks and normally manages Linux hosts over SSH without installing an agent.

[⬆ Back to Question Index](#question-index)

---

### 2. What are the main features of Ansible?

Main features: agentless architecture, YAML playbooks, idempotent modules, inventories, roles/collections, variables/templates, Vault for secrets, parallel execution, cloud/network support and CI/CD integration.

[⬆ Back to Question Index](#question-index)

---

### 3. How is Ansible different from other configuration-management tools?

Ansible is primarily agentless and push-based, uses human-readable YAML, and normally communicates over SSH/WinRM. Unlike many agent-based tools, managed nodes usually do not need a persistent Ansible agent or central server.

[⬆ Back to Question Index](#question-index)

---

### 4. What is agentless architecture in Ansible?

Agentless means Ansible normally does not require an Ansible agent/daemon on managed nodes. The control node connects remotely, commonly through SSH for Linux/Unix and WinRM/PSRP for Windows, executes the required automation and returns results.

[⬆ Back to Question Index](#question-index)

---

### 5. What are the prerequisites for using Ansible?

You need an Ansible control node, network connectivity to managed nodes, authentication credentials/SSH keys, an inventory, and suitable remote access. Most POSIX modules also require Python on managed nodes; Windows uses PowerShell-based remoting.

[⬆ Back to Question Index](#question-index)

---

### 6. What is an Ansible control node?

The control node is the system where Ansible is installed and from which commands and playbooks are executed. It holds inventories, playbooks, roles, collections and configuration.

[⬆ Back to Question Index](#question-index)

---

### 7. What is a managed node?

A managed node is a target system controlled by Ansible, such as a Linux/Windows server, network device or cloud resource. It normally does not require an Ansible agent.

[⬆ Back to Question Index](#question-index)

---

### 8. Which protocols does Ansible use to communicate with managed nodes?

For Linux/Unix Ansible commonly uses SSH. For Windows it commonly uses WinRM or PSRP. Network/cloud modules can use APIs or device-specific transports such as network_cli, NETCONF or HTTPAPI.

[⬆ Back to Question Index](#question-index)

---

### 9. What is an Ansible inventory?

An inventory defines the hosts and groups Ansible manages and can also contain host/group variables. It may be static or dynamically generated.

[⬆ Back to Question Index](#question-index)

---

### 10. What is the default inventory file location?

The traditional system-wide default inventory path is `/etc/ansible/hosts`. A different inventory can be configured in `ansible.cfg` or supplied with `-i`.

[⬆ Back to Question Index](#question-index)

---

### 11. What inventory formats does Ansible support?

Ansible supports INI and YAML inventory files, dynamic inventory plugins/scripts, and multiple inventory sources.

[⬆ Back to Question Index](#question-index)

---

### 12. What is an ad hoc command?

An ad hoc command is a one-line Ansible command used for a quick, usually one-time task without writing a playbook. Example: `ansible all -m ping`.

[⬆ Back to Question Index](#question-index)

---

### 13. When should you use ad hoc commands versus playbooks?

Use ad hoc commands for quick one-time checks or actions. Use playbooks for repeatable, multi-step, version-controlled and production automation.

[⬆ Back to Question Index](#question-index)

---

### 14. What is an Ansible module?

A module is a reusable unit of work Ansible executes, such as `copy`, `template`, `package`, `service`, `user` or `uri`. Modules usually describe and enforce a desired state.

[⬆ Back to Question Index](#question-index)

---

### 15. What is an Ansible playbook?

A playbook is a YAML file containing one or more plays that define which hosts to target and which tasks, roles, variables and handlers to execute.

[⬆ Back to Question Index](#question-index)

---

### 16. What is a play in Ansible?

A play maps a set of hosts to tasks/roles and related settings such as variables, privilege escalation and execution strategy.

[⬆ Back to Question Index](#question-index)

---

### 17. What is a task in Ansible?

A task is a single unit of work in a play, normally invoking one module with specific arguments.

[⬆ Back to Question Index](#question-index)

---

### 18. What is YAML and why does Ansible use it?

YAML is a human-readable data-serialization format. Ansible uses it for playbooks and variable files because nested configuration can be expressed clearly and version-controlled.

[⬆ Back to Question Index](#question-index)

---

### 19. What does idempotency mean in Ansible?

Idempotency means running the same automation repeatedly should leave a system in the same desired state and should not make unnecessary changes after that state is reached.

[⬆ Back to Question Index](#question-index)

---

### 20. How do you install Ansible?

Install with a supported package method, commonly `python3 -m pip install ansible` for the community package or `python3 -m pip install ansible-core` for the core engine. Distribution packages can also be used.

[⬆ Back to Question Index](#question-index)

---

### 21. How do you check the installed Ansible version?

Run `ansible --version`. It shows the Ansible Core version, configuration file, module paths, collection paths and Python version.

[⬆ Back to Question Index](#question-index)

---

### 22. How do you test connectivity to managed nodes?

Use `ansible all -i inventory -m ansible.builtin.ping`. The ping module validates Ansible connectivity and usable Python on supported POSIX hosts; it is not an ICMP ping.

[⬆ Back to Question Index](#question-index)

---

### 23. What is the ansible.cfg file?

`ansible.cfg` controls Ansible behavior such as inventory, forks, remote user, privilege escalation, SSH settings, callbacks and plugin paths.

[⬆ Back to Question Index](#question-index)

---

### 24. What is the order of precedence for ansible.cfg?

Configuration file precedence is: `ANSIBLE_CONFIG` environment variable, `./ansible.cfg` in the current directory, `~/.ansible.cfg`, then `/etc/ansible/ansible.cfg`. The first valid file found is used.

[⬆ Back to Question Index](#question-index)

---

### 25. What is privilege escalation in Ansible?

Privilege escalation lets Ansible execute tasks as another user after connecting to a managed node, typically using `sudo`.

[⬆ Back to Question Index](#question-index)

---

### 26. What is become in Ansible?

`become: true` enables privilege escalation for a play or task.

[⬆ Back to Question Index](#question-index)

---

### 27. What is the difference between become, become_user and become_method?

`become` enables escalation; `become_user` selects the target user, such as `root`; `become_method` selects the mechanism, such as `sudo`, `su` or another supported become plugin.

[⬆ Back to Question Index](#question-index)

---

### 28. What are facts in Ansible?

Facts are information Ansible discovers about a host, such as OS, IP addresses, CPU, memory and interfaces. They are normally available through `ansible_facts`.

[⬆ Back to Question Index](#question-index)

---

### 29. What does gather_facts do?

`gather_facts` controls whether Ansible automatically runs fact gathering at the beginning of a play. `gather_facts: false` can reduce startup time when facts are unnecessary.

[⬆ Back to Question Index](#question-index)

---

### 30. What is the setup module?

`ansible.builtin.setup` gathers facts from managed POSIX hosts. Example: `ansible all -m ansible.builtin.setup`.

[⬆ Back to Question Index](#question-index)

---

## Inventory and Host Management

### 31. How do you create a static inventory?

Create an INI or YAML inventory listing hosts and groups. Example: `inventory.ini`: `[web]\nweb01 ansible_host=10.0.0.10\nweb02 ansible_host=10.0.0.11`.

[⬆ Back to Question Index](#question-index)

---

### 32. What are inventory groups?

Inventory groups are named collections of hosts, such as `web`, `db` or `prod`, used for targeting and applying shared variables.

[⬆ Back to Question Index](#question-index)

---

### 33. How do you create parent and child groups?

In INI inventory use a `:children` group, e.g. `[app:children]\nweb\napi`. In YAML inventory define child groups under `children:`.

[⬆ Back to Question Index](#question-index)

---

### 34. What are host variables?

Host variables are values that apply to one inventory host, such as `ansible_host`, application ports or host-specific package lists. Store them inline or in `host_vars/<host>.yml`.

[⬆ Back to Question Index](#question-index)

---

### 35. What are group variables?

Group variables are shared by every host in an inventory group. Store them inline or in `group_vars/<group>.yml`.

[⬆ Back to Question Index](#question-index)

---

### 36. What are group_vars and host_vars directories?

`group_vars/` stores variables for inventory groups; `host_vars/` stores variables for individual hosts. They keep inventory-specific data separate from playbook logic.

[⬆ Back to Question Index](#question-index)

---

### 37. What is dynamic inventory?

Dynamic inventory obtains hosts and groups from an external source such as Azure, AWS, VMware or another API instead of maintaining a fixed host list manually.

[⬆ Back to Question Index](#question-index)

---

### 38. When would you use dynamic inventory?

Use dynamic inventory when infrastructure changes frequently, especially autoscaling or cloud environments where hosts are created and removed dynamically.

[⬆ Back to Question Index](#question-index)

---

### 39. How can Ansible dynamically discover Azure or cloud hosts?

Use the appropriate inventory plugin, for example the Azure RM inventory plugin, authenticate to Azure, define filters/grouping in the inventory plugin configuration, then run Ansible against that inventory source.

[⬆ Back to Question Index](#question-index)

---

### 40. How do you specify a custom inventory file?

Use `-i`: `ansible-playbook -i inventories/prod site.yml`.

[⬆ Back to Question Index](#question-index)

---

### 41. How do you list all hosts in an inventory?

Use `ansible-inventory -i inventory --list` for inventory data or `ansible all -i inventory --list-hosts` to display hosts.

[⬆ Back to Question Index](#question-index)

---

### 42. How do you list hosts matched by a pattern?

Use `ansible '<pattern>' -i inventory --list-hosts`, for example `ansible 'web:&prod' -i inventory --list-hosts`.

[⬆ Back to Question Index](#question-index)

---

### 43. How do host patterns work in Ansible?

Host patterns select inventory hosts/groups. Common operators are union `:` or `,`, intersection `&`, and exclusion `!`, for example `web:&prod:!maintenance`.

[⬆ Back to Question Index](#question-index)

---

### 44. How do you target multiple groups?

Use a union pattern such as `hosts: web:app` or `ansible 'web:app' ...`.

[⬆ Back to Question Index](#question-index)

---

### 45. How do you exclude hosts from a play?

Use `!` in a host pattern, for example `hosts: 'web:!web03'`.

[⬆ Back to Question Index](#question-index)

---

### 46. How do you run the same playbook on nodes using different SSH ports and usernames?

Set connection variables per host/group, such as `ansible_user` and `ansible_port`, then run the same playbook normally.

[⬆ Back to Question Index](#question-index)

---

### 47. How do you configure ansible_host?

Set `ansible_host` in inventory or host variables to the real hostname/IP used for the connection, e.g. `app1 ansible_host=10.0.0.10`.

[⬆ Back to Question Index](#question-index)

---

### 48. How do you configure ansible_user?

Set `ansible_user` in inventory/group/host variables or use CLI `-u user`.

[⬆ Back to Question Index](#question-index)

---

### 49. How do you configure ansible_port?

Set `ansible_port`, e.g. `app1 ansible_port=2222`, or configure the connection appropriately.

[⬆ Back to Question Index](#question-index)

---

### 50. How do you use SSH keys with Ansible?

Place the public key in the remote account's `authorized_keys` and use the matching private key from the control node. Set `ansible_ssh_private_key_file` or use `--private-key`; protect private keys and prefer a secret/credential store in CI/CD.

[⬆ Back to Question Index](#question-index)

---

## Modules and Ad Hoc Commands

### 51. What are commonly used Ansible modules?

Common modules include `ping`, `setup`, `package`, `apt`, `dnf`, `service`, `systemd_service`, `copy`, `template`, `file`, `user`, `group`, `get_url`, `uri`, `git`, `command`, `shell`, `reboot`, `wait_for`, `cron`, `stat` and `debug`.

[⬆ Back to Question Index](#question-index)

---

### 52. How do you execute a shell command with Ansible?

Use `ansible.builtin.shell` when shell features are required: `ansible all -m ansible.builtin.shell -a 'df -h | grep /data'`. Prefer `command` or a purpose-built module when shell parsing is unnecessary.

[⬆ Back to Question Index](#question-index)

---

### 53. What is the difference between command and shell modules?

`command` executes a command directly without a shell, so pipes, redirects and shell operators are unavailable. `shell` runs through a shell and supports those features but introduces more quoting/security/idempotency concerns.

[⬆ Back to Question Index](#question-index)

---

### 54. When should you avoid the shell module?

Avoid `shell` when a dedicated module or `command` can perform the task. Dedicated modules are usually safer, more portable and more idempotent.

[⬆ Back to Question Index](#question-index)

---

### 55. How do you copy a file to remote servers?

Use `ansible.builtin.copy`, e.g. `copy: {src: app.conf, dest: /etc/app/app.conf, mode: '0644'}`.

[⬆ Back to Question Index](#question-index)

---

### 56. What is the difference between copy and template modules?

`copy` transfers static files/content. `template` renders a Jinja2 template using variables before placing the result on the managed host.

[⬆ Back to Question Index](#question-index)

---

### 57. How do you fetch a file from a remote host?

Use `ansible.builtin.fetch` to copy a file from a managed node to the control node.

[⬆ Back to Question Index](#question-index)

---

### 58. How do you synchronize directories with Ansible?

Use `ansible.posix.synchronize`, which wraps rsync, when efficient directory synchronization is required. The `ansible.posix` collection and rsync requirements must be available.

[⬆ Back to Question Index](#question-index)

---

### 59. How do you install packages using Ansible?

Use `ansible.builtin.package` for portable package management or an OS-specific module such as `apt`/`dnf`. Example: `package: {name: nginx, state: present}`.

[⬆ Back to Question Index](#question-index)

---

### 60. What is the difference between package, apt, yum and dnf modules?

`package` is a generic abstraction. `apt` targets Debian/Ubuntu APT, `dnf` targets DNF-based systems, and `yum` is the historical Yum interface/compatibility module. Use OS-specific modules when their special options are needed.

[⬆ Back to Question Index](#question-index)

---

### 61. How do you manage services using Ansible?

Use `ansible.builtin.service` or `ansible.builtin.systemd_service`, for example `service: {name: nginx, state: started, enabled: true}`.

[⬆ Back to Question Index](#question-index)

---

### 62. How do you create users and groups?

Use `ansible.builtin.group` and `ansible.builtin.user`; loop over data when creating multiple accounts.

[⬆ Back to Question Index](#question-index)

---

### 63. How do you manage files and directories?

Use `ansible.builtin.file` to create/remove files, directories and links or to manage attributes. Use `copy`/`template` for file content.

[⬆ Back to Question Index](#question-index)

---

### 64. How do you change file permissions and ownership?

Use `ansible.builtin.file` with `owner`, `group` and `mode`, e.g. `file: {path: /opt/app, owner: app, group: app, mode: '0750'}`.

[⬆ Back to Question Index](#question-index)

---

### 65. How do you download files using get_url?

Use `ansible.builtin.get_url` with `url`, `dest` and preferably a checksum when available.

[⬆ Back to Question Index](#question-index)

---

### 66. How do you work with Git repositories using Ansible?

Use `ansible.builtin.git`, specifying `repo`, `dest`, and preferably an immutable `version` such as a tag or commit for deployments.

[⬆ Back to Question Index](#question-index)

---

### 67. How do you reboot servers using Ansible?

Use `ansible.builtin.reboot`; it can reboot and wait for the host to return.

[⬆ Back to Question Index](#question-index)

---

### 68. How do you wait for a port or service using wait_for?

Use `ansible.builtin.wait_for`, e.g. wait for `port: 8080`, `state: started`, and a suitable timeout.

[⬆ Back to Question Index](#question-index)

---

### 69. How do you mount filesystems using Ansible?

Use `ansible.posix.mount` to manage filesystem mounts and `/etc/fstab`; it requires the `ansible.posix` collection.

[⬆ Back to Question Index](#question-index)

---

### 70. How do you manage cron jobs using Ansible?

Use `ansible.builtin.cron` with a unique `name` and schedule fields such as `minute`, `hour` and `job`.

[⬆ Back to Question Index](#question-index)

---

## Playbooks

### 71. What is the basic structure of an Ansible playbook?

A basic playbook contains a YAML list of plays with `name`, `hosts`, optional `become`/`vars`, and `tasks` or `roles`.

[⬆ Back to Question Index](#question-index)

---

### 72. How do you execute a playbook?

Run `ansible-playbook site.yml`.

[⬆ Back to Question Index](#question-index)

---

### 73. How do you run a playbook against a custom inventory?

Run `ansible-playbook -i inventories/prod site.yml`.

[⬆ Back to Question Index](#question-index)

---

### 74. How do you run only part of a playbook?

Use tags (`--tags`, `--skip-tags`), `--limit` for selected hosts, or structure reusable task files/roles. `--start-at-task` can resume from a named task in suitable cases.

[⬆ Back to Question Index](#question-index)

---

### 75. What are tags in Ansible?

Tags are labels attached to tasks, roles, blocks or imports so selected parts of a playbook can be run or skipped.

[⬆ Back to Question Index](#question-index)

---

### 76. How do --tags and --skip-tags work?

`--tags deploy` runs matching tagged content; `--skip-tags restart` excludes matching tagged content.

[⬆ Back to Question Index](#question-index)

---

### 77. How do you validate a playbook before execution?

Use `--syntax-check`, `ansible-lint`, `--list-hosts`, `--list-tasks`, and where supported `--check --diff`; then test in a non-production environment before production.

[⬆ Back to Question Index](#question-index)

---

### 78. What does --syntax-check do?

`--syntax-check` parses the playbook for syntax errors without executing its tasks.

[⬆ Back to Question Index](#question-index)

---

### 79. What does --check do?

`--check` enables check mode: supporting modules predict changes without applying them. It is not a perfect simulation for every module/task.

[⬆ Back to Question Index](#question-index)

---

### 80. What does --diff do?

`--diff` displays before/after differences for supported modules. Avoid exposing secret content when using it.

[⬆ Back to Question Index](#question-index)

---

### 81. What does --list-hosts do?

`--list-hosts` shows which hosts the playbook would target without running tasks.

[⬆ Back to Question Index](#question-index)

---

### 82. What does --list-tasks do?

`--list-tasks` displays tasks that would be executed without executing them.

[⬆ Back to Question Index](#question-index)

---

### 83. What does --list-tags do?

`--list-tags` displays available tags in the playbook.

[⬆ Back to Question Index](#question-index)

---

### 84. What are pre_tasks and post_tasks?

`pre_tasks` run before roles/tasks in a play; `post_tasks` run after them. They are useful for preparation and cleanup/verification.

[⬆ Back to Question Index](#question-index)

---

### 85. What is import_playbook?

`import_playbook` statically imports another playbook at parse time. It is used only at playbook level.

[⬆ Back to Question Index](#question-index)

---

### 86. What is the difference between import_tasks and include_tasks?

`import_tasks` is static and expanded during parsing; `include_tasks` is dynamic and evaluated during execution, so runtime conditions/loops can decide what gets included.

[⬆ Back to Question Index](#question-index)

---

### 87. What is the difference between static imports and dynamic includes?

Static imports are resolved at parse time and expose imported tasks/tags early. Dynamic includes are processed at runtime and support runtime decisions more naturally.

[⬆ Back to Question Index](#question-index)

---

### 88. How do you pass extra variables to a playbook?

Use `-e`/`--extra-vars`, e.g. `ansible-playbook site.yml -e 'env=prod version=1.2.3'`. Extra vars have very high precedence.

[⬆ Back to Question Index](#question-index)

---

### 89. How do you prompt for variables at runtime?

Use `vars_prompt` in the playbook. For secrets, set `private: true` and prefer a secret manager/Vault for automated pipelines.

[⬆ Back to Question Index](#question-index)

---

### 90. How do you execute a task only once using run_once?

Set `run_once: true` on the task. With batches/`serial`, understand that `run_once` behavior is tied to the active batch unless the logic is additionally constrained.

[⬆ Back to Question Index](#question-index)

---

## Variables, Facts and Jinja2

### 91. What are variables in Ansible?

Variables parameterize playbooks so the same automation can work across hosts and environments without duplicating logic.

[⬆ Back to Question Index](#question-index)

---

### 92. Where can variables be defined?

Variables can be defined in inventory, `group_vars`, `host_vars`, play/task vars, role defaults/vars, included variable files, registered variables, facts, `set_fact`, prompts and extra vars.

[⬆ Back to Question Index](#question-index)

---

### 93. What is variable precedence in Ansible?

Variable precedence determines which value wins when the same variable is defined in multiple places. In general, role defaults are low precedence and extra vars are among the highest; use `ansible-doc`/official precedence rules for the complete ordered list.

[⬆ Back to Question Index](#question-index)

---

### 94. What are extra vars and why do they have high precedence?

Extra vars are supplied with `-e` and intentionally override most other variable sources, making them useful for explicit runtime values such as release versions.

[⬆ Back to Question Index](#question-index)

---

### 95. How do you register task output in a variable?

Add `register: result_name` to a task. The resulting dictionary can contain fields such as `stdout`, `stderr`, `rc`, `changed` and `failed` depending on the module.

[⬆ Back to Question Index](#question-index)

---

### 96. How do you access registered output?

Reference fields using Jinja/conditions, e.g. `result.stdout`, `result.rc`, or `result.changed`.

[⬆ Back to Question Index](#question-index)

---

### 97. What are magic variables?

Magic variables are Ansible-provided variables describing execution/inventory context, such as `hostvars`, `groups`, `group_names`, `inventory_hostname` and `ansible_play_hosts`.

[⬆ Back to Question Index](#question-index)

---

### 98. What are hostvars, groups and group_names?

`hostvars` exposes variables for inventory hosts; `groups` maps group names to their hosts; `group_names` lists the groups containing the current host.

[⬆ Back to Question Index](#question-index)

---

### 99. What is inventory_hostname?

`inventory_hostname` is the name of the current host as defined in inventory, regardless of the value of `ansible_host`.

[⬆ Back to Question Index](#question-index)

---

### 100. What is ansible_facts?

`ansible_facts` is the dictionary containing gathered/discovered host facts.

[⬆ Back to Question Index](#question-index)

---

### 101. How do you create custom facts?

A common persistent custom-fact method is to place `.fact` files under `/etc/ansible/facts.d` and gather them with `setup`; they appear under `ansible_local`. You can also derive runtime facts with `set_fact`.

[⬆ Back to Question Index](#question-index)

---

### 102. What is set_fact?

`set_fact` creates variables for the current host during execution. With supported fact caching, `cacheable: true` can make the fact available through the configured cache.

[⬆ Back to Question Index](#question-index)

---

### 103. What is Jinja2?

Jinja2 is the templating engine Ansible uses for variable expressions, filters, conditionals and rendered configuration templates.

[⬆ Back to Question Index](#question-index)

---

### 104. How do you reference a variable in Jinja2?

Use `{{ variable_name }}` when rendering a value, e.g. `server_name={{ inventory_hostname }}`.

[⬆ Back to Question Index](#question-index)

---

### 105. What are Jinja2 filters?

Filters transform data in Jinja2 expressions, for example `default`, `upper`, `lower`, `join`, `unique`, `sort`, `to_json` and `combine`.

[⬆ Back to Question Index](#question-index)

---

### 106. How do default filters help with undefined variables?

`default` supplies a fallback when a variable is undefined, e.g. `{{ app_port | default(8080) }}`.

[⬆ Back to Question Index](#question-index)

---

### 107. How do you use conditionals with variables?

Use `when`, e.g. `when: env == 'prod'`. Do not wrap normal `when` expressions in `{{ }}`.

[⬆ Back to Question Index](#question-index)

---

### 108. How do you create a Jinja2 template?

Create a `.j2` file containing Jinja2 variables/logic and deploy it with `ansible.builtin.template`.

[⬆ Back to Question Index](#question-index)

---

### 109. How do you render different configuration values for different environments?

Keep environment values in separate inventory/group variable files and use the same template/playbook. Select the appropriate inventory for dev/QA/prod.

[⬆ Back to Question Index](#question-index)

---

### 110. How do you protect secrets used inside templates?

Store secrets in Ansible Vault or an external secret manager, pass them as variables, protect secret-producing tasks with `no_log: true`, restrict generated-file permissions, and avoid `--diff` on secret templates.

[⬆ Back to Question Index](#question-index)

---

## Conditionals, Loops and Flow Control

### 111. How does when work in Ansible?

`when` conditionally executes a task/play-related item based on variables, facts or registered results.

[⬆ Back to Question Index](#question-index)

---

### 112. How do you use multiple conditions?

Use a list for AND conditions or Boolean expressions for AND/OR, e.g. `when: [ansible_facts.os_family == 'RedHat', env == 'prod']`.

[⬆ Back to Question Index](#question-index)

---

### 113. How do loops work in Ansible?

Use `loop` to repeat a task for each item, referencing the current value as `item` by default.

[⬆ Back to Question Index](#question-index)

---

### 114. What is loop_control?

`loop_control` changes loop behavior/display, for example `loop_var`, `label`, `index_var`, `pause` or extended loop information.

[⬆ Back to Question Index](#question-index)

---

### 115. What is the difference between loop and with_items?

`loop` is the modern general loop syntax. `with_items` is older loop syntax and remains seen in existing playbooks; migrate to `loop` plus filters/lookups when appropriate.

[⬆ Back to Question Index](#question-index)

---

### 116. How do you loop over dictionaries?

Convert a dictionary to iterable items with `dict2items`, then use `item.key` and `item.value`.

[⬆ Back to Question Index](#question-index)

---

### 117. How do you loop over nested data?

Use filters/lookups such as `subelements` or transform nested structures before looping. Keep complex nested data readable by using named loop variables.

[⬆ Back to Question Index](#question-index)

---

### 118. How do you retry a task using until, retries and delay?

Register the result and use `until`, `retries` and `delay`, e.g. retry an HTTP check until `result.status == 200`.

[⬆ Back to Question Index](#question-index)

---

### 119. What is changed_when?

`changed_when` overrides whether Ansible reports a task as changed. It is useful for commands/scripts that cannot report idempotency themselves.

[⬆ Back to Question Index](#question-index)

---

### 120. What is failed_when?

`failed_when` defines custom conditions under which a task is considered failed.

[⬆ Back to Question Index](#question-index)

---

### 121. How do you skip a task based on OS family?

Gather facts and use `when: ansible_facts['os_family'] == 'RedHat'` or the required OS family.

[⬆ Back to Question Index](#question-index)

---

### 122. How do you execute different package modules for different Linux distributions?

Use facts with conditional `apt`/`dnf` tasks, or use the generic `package` module when the package names and required behavior are portable.

[⬆ Back to Question Index](#question-index)

---

### 123. How do you install different packages on Server A and Server B using a single playbook?

Define a `packages` list per host in `host_vars` and use one generic `package` task with `name: '{{ packages }}'`.

[⬆ Back to Question Index](#question-index)

---

### 124. How do blocks work in Ansible?

A `block` groups tasks so directives such as `when`, `become` and error handling can be applied to the group.

[⬆ Back to Question Index](#question-index)

---

### 125. What are rescue and always blocks?

Inside a block, `rescue` runs after a task in the block fails; `always` runs regardless of success/failure. They support structured recovery and cleanup.

[⬆ Back to Question Index](#question-index)

---

## Handlers, Error Handling and Reliability

### 126. What is a handler in Ansible?

A handler is a task triggered by `notify`, usually used for actions such as restarting a service only after a configuration actually changes.

[⬆ Back to Question Index](#question-index)

---

### 127. How does notify work?

A task that reports `changed` can `notify` one or more handlers by name/listen topic. Duplicate notifications normally result in the handler running once at the handler point.

[⬆ Back to Question Index](#question-index)

---

### 128. When are handlers executed?

Handlers normally run after the relevant section of the play once notified. `meta: flush_handlers` can force pending handlers to run earlier.

[⬆ Back to Question Index](#question-index)

---

### 129. How do you restart a web service only when its configuration changes?

Deploy the configuration with `copy`/`template`, add `notify: Restart service`, and define a restart handler. If the file does not change, the handler is not triggered.

[⬆ Back to Question Index](#question-index)

---

### 130. What is meta: flush_handlers?

`meta: flush_handlers` immediately runs all handlers that have been notified so far instead of waiting for the normal handler point.

[⬆ Back to Question Index](#question-index)

---

### 131. How do you continue a playbook when a task fails?

If the failure is acceptable, use precise `failed_when`, structured `block/rescue`, or in limited cases `ignore_errors: true`. Do not blindly ignore critical failures.

[⬆ Back to Question Index](#question-index)

---

### 132. What does ignore_errors do?

`ignore_errors: true` lets execution continue on that host after a task returns a normal failed status. It does not automatically solve unreachable hosts or invalid syntax.

[⬆ Back to Question Index](#question-index)

---

### 133. What does ignore_unreachable do?

`ignore_unreachable: true` allows Ansible to continue after a host is marked unreachable, where applicable. The underlying connectivity issue still needs remediation.

[⬆ Back to Question Index](#question-index)

---

### 134. What is any_errors_fatal?

`any_errors_fatal: true` causes a task error on a host to abort the play for all hosts after the current batch completes, useful when partial continuation is unsafe.

[⬆ Back to Question Index](#question-index)

---

### 135. What is max_fail_percentage?

`max_fail_percentage` aborts a play when failures in a `serial` batch exceed the configured percentage.

[⬆ Back to Question Index](#question-index)

---

### 136. How do block/rescue/always improve error handling?

Put risky tasks in `block`, recovery/rollback in `rescue`, and cleanup/reporting in `always`. This is clearer and safer than broadly ignoring errors.

[⬆ Back to Question Index](#question-index)

---

### 137. How do you deliberately fail a play using fail?

Use `ansible.builtin.fail` with a message and optional `when`, e.g. fail if a required version is missing.

[⬆ Back to Question Index](#question-index)

---

### 138. How do you validate assumptions using assert?

Use `ansible.builtin.assert` with `that`, `fail_msg` and optionally `success_msg` to validate required conditions before proceeding.

[⬆ Back to Question Index](#question-index)

---

### 139. How do you troubleshoot an unreachable host?

Check inventory/host variables, DNS/IP, routing/firewall, SSH/WinRM reachability, username/key/password, host-key handling, remote Python/PowerShell requirements, and rerun with `-vvv` or `-vvvv`.

[⬆ Back to Question Index](#question-index)

---

### 140. How do you troubleshoot a failed Ansible task?

Read the module error, rerun the affected host/task with higher verbosity, validate variables and permissions, reproduce the underlying command/API manually when appropriate, check module documentation, and use `debug`/registered results without exposing secrets.

[⬆ Back to Question Index](#question-index)

---

## Roles and Reusability

### 141. What is an Ansible role?

A role is a standardized reusable package of tasks, handlers, defaults, vars, templates, files and metadata.

[⬆ Back to Question Index](#question-index)

---

### 142. Why are roles important?

Roles improve reuse, separation of concerns, testing, consistency and maintainability across playbooks and environments.

[⬆ Back to Question Index](#question-index)

---

### 143. What is the standard directory structure of a role?

Typical directories are `tasks/`, `handlers/`, `defaults/`, `vars/`, `templates/`, `files/`, `meta/`, and optionally `tests/`; each commonly uses `main.yml`.

[⬆ Back to Question Index](#question-index)

---

### 144. What belongs in tasks/main.yml?

`tasks/main.yml` contains the role's default task entry point and can import/include additional task files.

[⬆ Back to Question Index](#question-index)

---

### 145. What belongs in handlers/main.yml?

`handlers/main.yml` contains handlers provided by the role.

[⬆ Back to Question Index](#question-index)

---

### 146. What belongs in defaults/main.yml?

`defaults/main.yml` contains easily overridable role defaults and has very low variable precedence.

[⬆ Back to Question Index](#question-index)

---

### 147. What belongs in vars/main.yml?

`vars/main.yml` contains role variables with higher precedence than role defaults and is intended for values that should be harder to override.

[⬆ Back to Question Index](#question-index)

---

### 148. What is the difference between role defaults and role vars?

Role defaults are low precedence and intended for user customization. Role vars have much higher precedence and should be used sparingly for values that normally should not be overridden.

[⬆ Back to Question Index](#question-index)

---

### 149. What belongs in templates and files directories?

`templates/` stores Jinja2 templates rendered by `template`; `files/` stores static files commonly transferred with `copy` or referenced by role tasks.

[⬆ Back to Question Index](#question-index)

---

### 150. What is meta/main.yml?

`meta/main.yml` stores role metadata such as dependencies and supported platform/role information.

[⬆ Back to Question Index](#question-index)

---

### 151. How do you create a role using ansible-galaxy?

Run `ansible-galaxy role init my_role`.

[⬆ Back to Question Index](#question-index)

---

### 152. How do you use a role in a playbook?

Add the role under `roles:` in a play, e.g. `roles: - webserver`, or use `include_role`/`import_role` when dynamic/static role inclusion is needed.

[⬆ Back to Question Index](#question-index)

---

### 153. How do you pass variables to roles?

Pass variables through inventory/group/host vars, play vars, role parameters, `include_role`/`import_role` vars, or extra vars, depending on desired precedence and reuse.

[⬆ Back to Question Index](#question-index)

---

### 154. What are role dependencies?

Role dependencies declare roles that should run before a role, typically in `meta/main.yml`. Use them carefully to avoid hidden coupling.

[⬆ Back to Question Index](#question-index)

---

### 155. How do you create an Apache web-server role?

Create the role with `ansible-galaxy role init`, put package/config/service tasks in `tasks`, Jinja templates in `templates`, restart logic in `handlers`, and configurable package/service names in `defaults`.

[⬆ Back to Question Index](#question-index)

---

### 156. What is Ansible Galaxy?

Ansible Galaxy is the ecosystem/CLI used to discover, install, initialize and manage reusable Ansible roles and collections.

[⬆ Back to Question Index](#question-index)

---

### 157. How do you install a role from Ansible Galaxy?

For a role, use `ansible-galaxy role install namespace.role`; for collections use `ansible-galaxy collection install namespace.collection`. Pin versions in requirements for reproducibility.

[⬆ Back to Question Index](#question-index)

---

### 158. How do you create reusable enterprise roles?

Keep roles single-purpose, parameterize them with defaults, use FQCN modules, avoid environment hard-coding, make tasks idempotent, add handlers and validation, document variables, test with Molecule/lint, and version releases.

[⬆ Back to Question Index](#question-index)

---

### 159. How do you structure roles for dev, QA and production?

Use the same roles across environments; put differences in separate inventories and `group_vars`/`host_vars`, e.g. `inventories/dev`, `inventories/qa`, `inventories/prod`.

[⬆ Back to Question Index](#question-index)

---

### 160. How do collections differ from roles?

A role packages automation for a specific responsibility. A collection is a broader versioned namespace that can contain multiple roles, modules, plugins, playbooks and documentation.

[⬆ Back to Question Index](#question-index)

---

## Vault, Secrets and Security

### 161. What is Ansible Vault?

Ansible Vault encrypts sensitive Ansible data such as variable files or individual values so secrets are not stored as plaintext.

[⬆ Back to Question Index](#question-index)

---

### 162. Why should you use Ansible Vault?

Use Vault to protect secrets at rest in repositories/files while still allowing playbooks to consume them at runtime.

[⬆ Back to Question Index](#question-index)

---

### 163. What types of data can Ansible Vault encrypt?

Vault can encrypt entire files and individual strings/variables, including passwords, tokens, keys and other sensitive values.

[⬆ Back to Question Index](#question-index)

---

### 164. How do you create an encrypted Vault file?

Run `ansible-vault create secrets.yml`.

[⬆ Back to Question Index](#question-index)

---

### 165. How do you view an encrypted Vault file?

Run `ansible-vault view secrets.yml`.

[⬆ Back to Question Index](#question-index)

---

### 166. How do you edit an encrypted Vault file?

Run `ansible-vault edit secrets.yml`.

[⬆ Back to Question Index](#question-index)

---

### 167. How do you encrypt an existing file?

Run `ansible-vault encrypt existing.yml`.

[⬆ Back to Question Index](#question-index)

---

### 168. How do you decrypt a Vault file?

Run `ansible-vault decrypt secrets.yml`. Decrypting writes plaintext to disk, so do it only when required.

[⬆ Back to Question Index](#question-index)

---

### 169. How do you change a Vault password?

Run `ansible-vault rekey secrets.yml`.

[⬆ Back to Question Index](#question-index)

---

### 170. How do you run a playbook that uses Vault?

Use `ansible-playbook site.yml --ask-vault-pass`, `--vault-password-file`, or `--vault-id` depending on how Vault credentials are managed.

[⬆ Back to Question Index](#question-index)

---

### 171. What is --ask-vault-pass?

`--ask-vault-pass` interactively prompts for the Vault password needed to decrypt Vault-encrypted data.

[⬆ Back to Question Index](#question-index)

---

### 172. What is a vault password file?

A vault password file supplies the Vault secret non-interactively. Protect it with strict permissions and never commit it to source control; CI/CD should source it from a protected credential mechanism.

[⬆ Back to Question Index](#question-index)

---

### 173. What are Vault IDs?

Vault IDs label different Vault secrets/environments, allowing multiple vault passwords in one run, e.g. `--vault-id dev@prompt --vault-id prod@/secure/prod-pass`.

[⬆ Back to Question Index](#question-index)

---

### 174. How do you encrypt only a single variable?

Use `ansible-vault encrypt_string`, e.g. `ansible-vault encrypt_string --name db_password`.

[⬆ Back to Question Index](#question-index)

---

### 175. Should SSH passwords be stored in plaintext inventory?

No. Prefer SSH keys/certificates or another controlled authentication mechanism. If passwords are unavoidable, store them in Ansible Vault or an external secret manager, not plaintext inventory.

[⬆ Back to Question Index](#question-index)

---

### 176. What is the preferred authentication method for Linux managed nodes?

SSH public-key authentication is commonly preferred for Linux managed nodes, using least-privilege accounts and `become` only where required.

[⬆ Back to Question Index](#question-index)

---

### 177. How do you integrate Ansible with HashiCorp Vault or an external secret manager?

Use the secret manager's supported Ansible lookup/plugin/collection or retrieve secrets securely at runtime. For HashiCorp Vault, use an appropriate `community.hashi_vault` lookup/plugin and authenticate with a short-lived identity rather than hard-coded tokens.

[⬆ Back to Question Index](#question-index)

---

### 178. How do you prevent secrets from appearing in logs?

Use `no_log: true` on secret-handling tasks, avoid debugging secret variables, protect callback/log access, avoid `--diff` for secret files, and fetch credentials from Vault/secret managers at runtime.

[⬆ Back to Question Index](#question-index)

---

### 179. What does no_log do?

`no_log: true` suppresses task arguments/results from normal Ansible output to reduce secret leakage. It also makes troubleshooting that task less visible, so scope it carefully.

[⬆ Back to Question Index](#question-index)

---

### 180. How would you secure Ansible in an enterprise CI/CD pipeline?

Use protected Git branches and reviews, lint/tests, least-privilege service identities, SSH keys/short-lived credentials, Vault/external secret stores, `no_log`, protected agents, environment approvals, restricted inventories, immutable artifact versions, controlled `serial` rollout, health checks and centralized audit logs.

[⬆ Back to Question Index](#question-index)

---

## Advanced Execution and Performance

### 181. What is Ansible's default execution strategy?

The default strategy is `linear`: each task is generally executed across the current batch of hosts before Ansible advances to the next task.

[⬆ Back to Question Index](#question-index)

---

### 182. What is the linear strategy?

With `linear`, hosts in the current batch stay roughly task-synchronized: Ansible completes a task across the batch before moving to the next task.

[⬆ Back to Question Index](#question-index)

---

### 183. What is the free strategy?

With `free`, each host can progress through tasks as soon as it is ready without waiting for other hosts to finish the same task.

[⬆ Back to Question Index](#question-index)

---

### 184. What does serial do?

`serial` limits the number or percentage of hosts processed in each batch, which is useful for rolling deployments.

[⬆ Back to Question Index](#question-index)

---

### 185. How do you perform a rolling deployment with serial?

Set `serial`, for example `serial: 10`, then drain/update/restart/health-check each batch before proceeding.

[⬆ Back to Question Index](#question-index)

---

### 186. What is forks in Ansible?

`forks` controls the maximum number of parallel worker processes Ansible uses for host execution. The default is commonly 5 unless configured otherwise.

[⬆ Back to Question Index](#question-index)

---

### 187. How do you increase Ansible parallelism?

Increase `forks` in configuration or with the appropriate CLI setting, and optimize SSH/pipelining/fact gathering. Increase gradually so the controller, network and targets are not overloaded.

[⬆ Back to Question Index](#question-index)

---

### 188. What is throttle?

`throttle` limits concurrent workers for a specific task/block/play to a number lower than the global/batch parallelism.

[⬆ Back to Question Index](#question-index)

---

### 189. What is async in Ansible?

`async` allows a task to run longer than the normal synchronous execution window and gives it an asynchronous job ID.

[⬆ Back to Question Index](#question-index)

---

### 190. What is poll in Ansible?

`poll` controls how Ansible waits for an async task. `poll: 0` starts it and returns immediately; a positive value makes Ansible periodically check until completion or timeout.

[⬆ Back to Question Index](#question-index)

---

### 191. How do you run a long-running task asynchronously?

Use `async: <seconds>` with `poll: 0` for fire-and-forget, then query with `async_status`; or use a positive `poll` value to wait while periodically checking.

[⬆ Back to Question Index](#question-index)

---

### 192. What is delegation in Ansible?

Delegation runs a particular task on a different host from the current play host, while retaining the current host's play context.

[⬆ Back to Question Index](#question-index)

---

### 193. What is delegate_to?

`delegate_to: hostname` specifies the host on which that task should actually execute. Common uses are load-balancer/API operations.

[⬆ Back to Question Index](#question-index)

---

### 194. What is local_action?

`local_action` is shorthand for delegating a task to the Ansible control node. `delegate_to: localhost` is usually clearer and more flexible.

[⬆ Back to Question Index](#question-index)

---

### 195. How do you execute a task on the control node?

Use `delegate_to: localhost` on the task or run a play with `hosts: localhost` and `connection: local`.

[⬆ Back to Question Index](#question-index)

---

### 196. How do you execute a task on one host on behalf of another?

Use `delegate_to: other_host` on the task. Be careful with delegated variables and concurrency when many hosts delegate to the same target.

[⬆ Back to Question Index](#question-index)

---

### 197. What is connection: local?

`connection: local` executes tasks on the machine running Ansible rather than connecting to the inventory host over SSH.

[⬆ Back to Question Index](#question-index)

---

### 198. How do you optimize Ansible for hundreds or thousands of servers?

Tune `forks`, use suitable strategies, disable unnecessary fact gathering or enable fact caching, enable SSH pipelining where compatible, use dynamic inventory, reduce controller-side work, batch risky operations with `serial`, and use Automation Platform/AWX execution capacity for enterprise scale.

[⬆ Back to Question Index](#question-index)

---

### 199. What is fact caching?

Fact caching stores gathered facts between runs in a configured cache backend, reducing repeated fact-gathering and allowing facts about hosts to be reused.

[⬆ Back to Question Index](#question-index)

---

### 200. How can pipelining improve performance?

SSH pipelining reduces the number of SSH operations required to execute modules, which can significantly improve performance. It must be compatible with the target's privilege-escalation/security configuration.

[⬆ Back to Question Index](#question-index)

---

## Testing, Linting and Troubleshooting

### 201. How do you test Ansible playbooks safely?

Run syntax/lint checks, inventory/list checks, check/diff mode where reliable, role tests with Molecule, and integration tests in a disposable/non-production environment before controlled production rollout.

[⬆ Back to Question Index](#question-index)

---

### 202. What is ansible-lint?

`ansible-lint` statically checks Ansible content for correctness, risky patterns and recommended practices.

[⬆ Back to Question Index](#question-index)

---

### 203. What is yamllint?

`yamllint` checks YAML syntax and style; it is generic YAML linting rather than Ansible-specific semantic validation.

[⬆ Back to Question Index](#question-index)

---

### 204. What is Molecule?

Molecule is a framework commonly used to create, converge, verify and destroy test instances for Ansible roles/collections, supporting repeatable role testing.

[⬆ Back to Question Index](#question-index)

---

### 205. How do you use Molecule to test roles?

Create a Molecule scenario, define the driver/platform, run `molecule test`, and use the converge playbook plus verification to test role behavior and idempotency in disposable instances.

[⬆ Back to Question Index](#question-index)

---

### 206. What is check mode and what are its limitations?

Check mode (`--check`) predicts changes without applying them for modules that support it. Limitations: some modules/tasks cannot simulate accurately, registered data may differ, commands/scripts may not behave meaningfully, and external side effects cannot always be predicted.

[⬆ Back to Question Index](#question-index)

---

### 207. How do you use diff mode?

Run `ansible-playbook site.yml --diff` or combine with `--check --diff`. Do not expose secret files in diffs.

[⬆ Back to Question Index](#question-index)

---

### 208. How do you increase Ansible verbosity?

Add verbosity flags: `-v`, `-vv`, `-vvv` or `-vvvv`.

[⬆ Back to Question Index](#question-index)

---

### 209. What is the difference between -v, -vv, -vvv and -vvvv?

Each additional `v` increases detail. `-v` gives extra task information; `-vv` more context; `-vvv` commonly exposes connection/execution debugging; `-vvvv` provides very detailed connection/plugin debugging.

[⬆ Back to Question Index](#question-index)

---

### 210. How do you inspect the effective Ansible configuration?

Run `ansible-config dump --only-changed` for effective non-default changes or `ansible-config dump` for the full effective configuration.

[⬆ Back to Question Index](#question-index)

---

### 211. How do you debug variables in a playbook?

Use `ansible.builtin.debug` with `var: variable_name` or a safe `msg`. Avoid printing secrets.

[⬆ Back to Question Index](#question-index)

---

### 212. What is the debug module?

`ansible.builtin.debug` prints variables or messages during execution and is commonly used for troubleshooting and visibility.

[⬆ Back to Question Index](#question-index)

---

### 213. How do you identify why a host was skipped?

Run with higher verbosity and inspect the task's `when`, tags, host pattern, limits and variable values. Ansible normally reports a skip reason at sufficient verbosity.

[⬆ Back to Question Index](#question-index)

---

### 214. How do you identify why a handler did not run?

Check that the notifying task actually reported `changed`, the handler name/listen topic matches, execution did not fail before the handler point, tags did not exclude it, and flush handlers if an earlier run is required.

[⬆ Back to Question Index](#question-index)

---

### 215. How do you troubleshoot SSH authentication failures?

Test SSH manually, verify host/user/port/key, key permissions, ssh-agent, known-host handling and server SSH configuration; then use `ansible ... -m ping -vvv`.

[⬆ Back to Question Index](#question-index)

---

### 216. How do you troubleshoot sudo/become failures?

Verify the remote user has the required sudo/become rights, the correct `become_method`/`become_user` is used, and provide the become password with `-K` only when required. Check sudo policy/TTY restrictions.

[⬆ Back to Question Index](#question-index)

---

### 217. How do you troubleshoot Python interpreter problems on managed nodes?

Verify Python is installed at a supported path and set `ansible_python_interpreter` when auto-discovery is insufficient. The `raw` module can help bootstrap Python because it does not require Python on the target.

[⬆ Back to Question Index](#question-index)

---

### 218. How do you troubleshoot YAML indentation or syntax errors?

Use `ansible-playbook --syntax-check`, `yamllint`, consistent spaces instead of tabs, and verify list/dictionary indentation and quoting.

[⬆ Back to Question Index](#question-index)

---

### 219. How do you troubleshoot undefined variables?

Use verbosity/debug to determine where the variable should be defined, inspect inventory/group/host vars and spelling, understand precedence, and use `default` only when a fallback is genuinely valid.

[⬆ Back to Question Index](#question-index)

---

### 220. How do you make troubleshooting output safe when secrets are involved?

Use `no_log: true`, never debug secret variables, restrict logs/callback outputs, sanitize errors, avoid diff mode on secret content, and reproduce issues with non-secret test values when possible.

[⬆ Back to Question Index](#question-index)

---

## CI/CD, Azure DevOps and Jenkins

### 221. How do you integrate Ansible with Jenkins?

Typical flow: Jenkins checks out Git, installs dependencies, runs lint/tests, obtains protected credentials, executes `ansible-playbook`, performs health checks and records deployment results. Production should include approvals and immutable artifact versions.

[⬆ Back to Question Index](#question-index)

---

### 222. How do you integrate Ansible with Azure DevOps Pipelines?

Run Ansible from an Azure DevOps agent: checkout code, install/pin Ansible dependencies, lint/test, retrieve credentials from protected variables/Key Vault, execute the environment inventory/playbook, use Environment approvals/checks for production, and publish logs/results.

[⬆ Back to Question Index](#question-index)

---

### 223. Where should Ansible playbooks be stored in a CI/CD setup?

Store playbooks, roles, inventory definitions and dependency files in version control, normally in the application/infrastructure repository or a dedicated automation repository with pull-request controls.

[⬆ Back to Question Index](#question-index)

---

### 224. How do you validate Ansible code during pull requests?

Run YAML/Ansible linting, syntax checks, role/unit/integration tests, inventory validation and optionally check mode against a safe test environment as PR validation gates.

[⬆ Back to Question Index](#question-index)

---

### 225. Which Ansible checks should run before deployment?

At minimum: dependency installation/pinning, `yamllint`, `ansible-lint`, `--syntax-check`, inventory/host validation, automated role/integration tests, and safe check/diff mode where supported.

[⬆ Back to Question Index](#question-index)

---

### 226. How do you pass environment-specific inventory from a pipeline?

Use separate inventory paths such as `inventories/dev`, `inventories/qa`, `inventories/prod` and pass the selected path with `-i` based on a validated pipeline parameter/stage.

[⬆ Back to Question Index](#question-index)

---

### 227. How do you securely pass Vault credentials from CI/CD?

Store the Vault password/identity in the CI/CD credential store or external secret manager, materialize it only for the job with strict permissions, use `--vault-id`/`--vault-password-file`, mask output and delete temporary secret material afterward.

[⬆ Back to Question Index](#question-index)

---

### 228. How do you use pipeline service connections or secret stores with Ansible?

Authenticate the pipeline through a least-privilege service connection/workload identity, retrieve secrets from the platform secret store such as Azure Key Vault, expose only required values to Ansible at runtime, and never commit them.

[⬆ Back to Question Index](#question-index)

---

### 229. How do you design dev, QA, staging and production deployments with Ansible?

Use one reusable codebase with separate inventories/group vars per environment. Promote the same immutable artifact through dev → QA → staging → prod, add automated tests between stages, approvals before production, and rolling deployment/health checks in prod.

[⬆ Back to Question Index](#question-index)

---

### 230. How do you add approvals before production Ansible deployment?

Use the CI/CD platform's protected production Environment/stage with manual approval/checks before the Ansible deployment job. Keep approver permissions separate from deployment credentials.

[⬆ Back to Question Index](#question-index)

---

### 231. How do you roll back an Ansible-based application deployment?

Deploy immutable versioned releases, retain the previous version, and create rollback tasks/playbooks that repoint the current release or redeploy the previous artifact/config, restart safely and verify health. Database rollback must be designed separately.

[⬆ Back to Question Index](#question-index)

---

### 232. How do you make Ansible deployment artifacts traceable?

Record Git commit, pipeline/build ID, artifact name/version/checksum, inventory/environment, playbook/collection versions, initiator/approval and Ansible execution logs. Deploy immutable artifact coordinates rather than `latest`.

[⬆ Back to Question Index](#question-index)

---

### 233. How do you use Ansible after Terraform provisioning?

Let Terraform provision infrastructure and expose required outputs; generate/query inventory from those outputs or cloud inventory plugins, wait for connectivity, then run Ansible to configure OS/middleware and deploy applications.

[⬆ Back to Question Index](#question-index)

---

### 234. What is the difference between Terraform and Ansible?

Terraform primarily provisions and manages infrastructure lifecycle using state. Ansible primarily configures systems, deploys applications and orchestrates operational tasks, normally without a Terraform-style infrastructure state file.

[⬆ Back to Question Index](#question-index)

---

### 235. When would you use Terraform and Ansible together?

Use Terraform to create infrastructure such as networks/VMs/LBs and Ansible afterward to configure OS/middleware, install packages and deploy applications.

[⬆ Back to Question Index](#question-index)

---

### 236. How do you avoid configuration drift between Terraform and Ansible?

Give each tool clear ownership: Terraform owns infrastructure resources; Ansible owns guest/application configuration. Do not manage the same property with both, keep both in Git, use immutable inputs and run periodic plan/configuration checks.

[⬆ Back to Question Index](#question-index)

---

### 237. How would Jenkins trigger an Ansible deployment after a successful build?

Make the Ansible deployment stage depend on the successful build/test/publish stages, then call `ansible-playbook` with the exact artifact version and protected credentials. Add approvals for production.

[⬆ Back to Question Index](#question-index)

---

### 238. How do you deploy an application artifact using Ansible?

Download/copy the exact versioned artifact, verify checksum, stop/drain if needed, unpack/install to a versioned release directory, render config, switch atomically/current symlink, restart via handler and run a health check.

[⬆ Back to Question Index](#question-index)

---

### 239. How do you integrate health checks into an Ansible deployment?

Use `uri`, `wait_for` or application-specific checks after deployment; register the result, retry with `until`, and fail/rollback if the expected status/content is not reached.

[⬆ Back to Question Index](#question-index)

---

### 240. How do you implement blue-green or canary-style deployment using Ansible?

Blue-green: deploy to the inactive environment, verify it, then switch the load balancer and keep the old environment for rollback. Canary: use `serial`/host groups to deploy to a small percentage first, validate metrics/health, then progressively increase.

[⬆ Back to Question Index](#question-index)

---

## Real-World and Scenario-Based Questions

### 241. You have 2 servers in different locations. How do you copy files from Server1 to Server2 using Ansible?

For ordinary files, fetch from Server1 to the control node and then copy to Server2. For large data, use rsync/synchronize or shared artifact/object storage; direct remote-to-remote transfer can also be orchestrated with delegation when network/security design permits it.

[⬆ Back to Question Index](#question-index)

---

### 242. You have packages that must be installed on Server A and different packages on Server B. How do you do this in one playbook?

Define a package list per host in `host_vars` and use one `package` task. This keeps host differences as data rather than duplicating playbook logic.

[⬆ Back to Question Index](#question-index)

---

### 243. How would you deploy a web application to 100 servers with minimal downtime?

Use a rolling deployment with `serial`, drain each batch from the load balancer, deploy an immutable version, restart only when required, run health checks, add healthy nodes back, and stop rollout on failure.

[⬆ Back to Question Index](#question-index)

---

### 244. How would you perform a rolling restart of application servers?

Use `serial` to process a controlled number of hosts at a time and restart the service in each batch, preferably draining and health-checking around the restart.

[⬆ Back to Question Index](#question-index)

---

### 245. How do you ensure a service restarts only when its configuration changes?

Use a handler notified by the configuration task. Because `template`/`copy` are idempotent, the handler runs only when the configuration actually changes.

[⬆ Back to Question Index](#question-index)

---

### 246. A task fails on one host but you want remaining tasks to continue. What do you do?

By default, a normal task failure stops further tasks only for that failed host while other hosts continue. If later tasks must continue on the same failed host, use `block/rescue`, a precise `failed_when`, or carefully `ignore_errors`.

[⬆ Back to Question Index](#question-index)

---

### 247. Some hosts are unreachable but the deployment should continue for reachable hosts. What do you do?

Normally unreachable hosts are removed from active execution while reachable hosts continue. If the play explicitly needs to ignore unreachable status, use `ignore_unreachable: true`; investigate and report unreachable hosts separately.

[⬆ Back to Question Index](#question-index)

---

### 248. How do you run the same playbook when different servers use different users and SSH ports?

Store `ansible_user`, `ansible_port`, `ansible_host` and key settings per host/group in inventory/host_vars; the playbook itself stays unchanged.

[⬆ Back to Question Index](#question-index)

---

### 249. How do you deploy different configuration files to dev and production?

Use separate dev/prod inventories or group vars and one Jinja2 template, or choose template source through a variable when the file structure truly differs.

[⬆ Back to Question Index](#question-index)

---

### 250. How do you safely rotate a database password managed by Ansible?

Retrieve the new password from a secret manager/Vault, update the database credential using the appropriate DB module/API, update dependent application secrets/config, restart/reload safely, verify connectivity, then revoke the old credential. Use `no_log` and design overlap/rollback if the system supports it.

[⬆ Back to Question Index](#question-index)

---

### 251. How do you patch Linux servers using Ansible?

Target patch groups in controlled batches, use `apt`/`dnf` to apply approved updates, record results, determine reboot need, reboot conditionally, wait for return and run health checks. Test first and follow change/maintenance controls.

[⬆ Back to Question Index](#question-index)

---

### 252. How do you reboot only servers that require reboot after patching?

After patching, detect the OS-specific reboot-required condition, register it, and run `ansible.builtin.reboot` only when that condition is true.

[⬆ Back to Question Index](#question-index)

---

### 253. How do you create N users across M Linux machines?

Put the M machines in an inventory group, define the N users as data, and loop over `ansible.builtin.user`; manage groups/SSH keys and account state idempotently.

[⬆ Back to Question Index](#question-index)

---

### 254. How do you install software only if it is not already installed?

Use an idempotent package module with `state: present`; it reports `ok` and does not reinstall when the required package state is already satisfied.

[⬆ Back to Question Index](#question-index)

---

### 255. How do you execute a task only on Red Hat systems?

Use `when: ansible_facts['os_family'] == 'RedHat'` after fact gathering.

[⬆ Back to Question Index](#question-index)

---

### 256. How do you execute a task only when a file exists?

First use `ansible.builtin.stat` and register the result; execute the next task with `when: file_status.stat.exists`.

[⬆ Back to Question Index](#question-index)

---

### 257. How do you back up a configuration file before modifying it?

Many file-modifying modules such as `copy` and `template` support `backup: true`; alternatively create an explicit versioned backup before replacement.

[⬆ Back to Question Index](#question-index)

---

### 258. How do you validate a configuration before restarting a service?

Use the module's `validate` option where available, e.g. validate a generated config before it replaces the destination; only notify the restart handler after successful validated change.

[⬆ Back to Question Index](#question-index)

---

### 259. How do you stop a deployment if a health check fails?

Run a health check with `uri`/`wait_for`, use retries, and let the task fail when the expected condition is not reached. With rolling deployment, set failure thresholds/`any_errors_fatal` as required and invoke rollback in `rescue`.

[⬆ Back to Question Index](#question-index)

---

### 260. How do you collect deployment results from all hosts?

Register per-host results and expose them through callback output/AWX job results, or aggregate selected `hostvars` on the control node with a `run_once` delegated reporting task. Do not aggregate secret values.

[⬆ Back to Question Index](#question-index)

---

### 261. How do you deploy an application from JFrog/Artifactory using Ansible?

Use an immutable Artifactory URL/version, authenticate from a secret store, download with `get_url`/`uri` or the appropriate collection, verify checksum, deploy the artifact, restart via handler and perform a health check.

[⬆ Back to Question Index](#question-index)

---

### 262. How do you manage environment-specific secrets without duplicating playbooks?

Keep one playbook and separate environment variable files/inventories. Store each environment's secret values in Vault or an external secret manager and retrieve the correct values at runtime.

[⬆ Back to Question Index](#question-index)

---

### 263. How do you perform database changes before application deployment?

Run a versioned, idempotent migration step before application rollout, typically `run_once` on a controlled migration host/container, back up where required, fail the deployment on migration failure, and design backward-compatible migrations for rolling releases.

[⬆ Back to Question Index](#question-index)

---

### 264. How do you drain a server from a load balancer before deployment and add it back afterward?

Use the load balancer's API/module in delegated tasks to disable/drain the current host, wait for active connections if required, deploy and health-check it, then re-enable it. Combine with `serial`.

[⬆ Back to Question Index](#question-index)

---

### 265. How do you limit production blast radius when using Ansible?

Use narrow inventory patterns/`--limit`, protected production inventories, `serial`, canary batches, `max_fail_percentage`/`any_errors_fatal`, approvals, check mode where reliable, backups, health gates and tested rollback.

[⬆ Back to Question Index](#question-index)

---

### 266. How do you recover from a partially completed Ansible deployment?

Because tasks should be idempotent, first identify which hosts/tasks succeeded, fix the failure cause, then safely rerun or resume targeted hosts/tags. For application releases, use versioned artifacts and explicit rollback/recovery logic for non-idempotent steps.

[⬆ Back to Question Index](#question-index)

---

## Expert Architecture and Interview Discussion

### 267. Explain Ansible's architecture end-to-end.

Flow: `ansible-playbook` runs on the control node → configuration/inventory/plugins are loaded → host patterns and variables are resolved → plays/tasks/roles are parsed → connections such as SSH/WinRM/API are opened → modules/actions execute against targets → results are returned → conditions/handlers/error logic run → recap reports per-host status.

[⬆ Back to Question Index](#question-index)

---

### 268. Explain push-based and pull-based configuration management.

Push: a central controller initiates changes on targets; standard Ansible execution is primarily push-based. Pull: each target periodically retrieves automation and applies it; Ansible supports this with `ansible-pull`.

[⬆ Back to Question Index](#question-index)

---

### 269. Can Ansible work in both push and pull models?

Yes. Standard `ansible`/`ansible-playbook` is primarily push-based, while `ansible-pull` supports a pull-style model.

[⬆ Back to Question Index](#question-index)

---

### 270. How does ansible-pull work?

`ansible-pull` runs on a managed machine, pulls a playbook repository—commonly from Git—and executes a selected playbook locally. It is often scheduled periodically for decentralized convergence.

[⬆ Back to Question Index](#question-index)

---

### 271. How does Ansible achieve idempotency?

Most Ansible modules inspect current state and only perform changes required to reach the requested state. Idempotency depends on using state-aware modules and writing commands/custom logic carefully.

[⬆ Back to Question Index](#question-index)

---

### 272. How do you design idempotent custom automation?

Check current state before changing it, define a desired end state, use deterministic inputs, report `changed` only when a change occurred, support check mode where practical, avoid unconditional shell commands and test by running the automation twice.

[⬆ Back to Question Index](#question-index)

---

### 273. What are custom modules and when would you create one?

A custom module is user-written module code for an operation not adequately supported by existing modules. Create one when reusable, structured, idempotent behavior is needed rather than repeatedly wrapping complex shell/API logic.

[⬆ Back to Question Index](#question-index)

---

### 274. What are plugins in Ansible?

Plugins extend/control Ansible behavior on the control side. Types include connection, inventory, lookup, filter, callback, strategy, cache, become and others.

[⬆ Back to Question Index](#question-index)

---

### 275. What are callback plugins?

Callback plugins react to execution events and control or extend output/logging, for example custom formatting, notifications or centralized result reporting.

[⬆ Back to Question Index](#question-index)

---

### 276. What are lookup plugins?

Lookup plugins retrieve data on the control node for use in playbooks/templates, such as environment values, files or external secret stores.

[⬆ Back to Question Index](#question-index)

---

### 277. What are filter plugins?

Filter plugins add data-transformation functions usable in Jinja2 expressions.

[⬆ Back to Question Index](#question-index)

---

### 278. What are connection plugins?

Connection plugins define how Ansible communicates with targets, such as SSH, local, WinRM/PSRP, network CLI or other transports.

[⬆ Back to Question Index](#question-index)

---

### 279. What are Ansible collections?

Collections are versioned namespaces that package Ansible content such as modules, plugins, roles, playbooks and documentation, e.g. `ansible.posix`.

[⬆ Back to Question Index](#question-index)

---

### 280. How do you create and distribute an internal collection?

Initialize with `ansible-galaxy collection init namespace.collection`, develop roles/plugins/modules, test/lint, set metadata/version, build with `ansible-galaxy collection build`, then publish to an internal Automation Hub/Galaxy-compatible repository or distribute the built artifact.

[⬆ Back to Question Index](#question-index)

---

### 281. What is AWX?

AWX is the upstream open-source web/API automation controller project that provides inventories, credentials, job templates, schedules, RBAC and centralized execution history for Ansible.

[⬆ Back to Question Index](#question-index)

---

### 282. What is Red Hat Ansible Automation Platform?

Red Hat Ansible Automation Platform is Red Hat's enterprise automation platform around Ansible, providing supported automation controller, execution environments, content management/Automation Hub, governance and enterprise-scale automation capabilities.

[⬆ Back to Question Index](#question-index)

---

### 283. What benefits does an automation controller provide over CLI-only Ansible?

A controller adds centralized credentials, RBAC, inventories, job templates, schedules, API/webhooks, workflows, approvals, execution history/auditing and scalable execution instead of relying only on engineers running CLI commands.

[⬆ Back to Question Index](#question-index)

---

### 284. How do you implement RBAC for enterprise Ansible automation?

Integrate the automation controller with enterprise identity, create teams/roles, grant least-privilege access to organizations/projects/inventories/credentials/job templates, separate dev/prod permissions and audit changes/executions.

[⬆ Back to Question Index](#question-index)

---

### 285. How do you manage credentials centrally in enterprise Ansible?

Store credentials in the automation controller's encrypted credential store or integrate an external secret manager. Grant credentials to job templates through RBAC without exposing raw secrets to users.

[⬆ Back to Question Index](#question-index)

---

### 286. How do you schedule Ansible jobs?

Use Automation Controller/AWX schedules for managed enterprise jobs, or CI/CD/cron/systemd timers for simpler environments. Keep the scheduled command/playbook version-controlled and credentials protected.

[⬆ Back to Question Index](#question-index)

---

### 287. How do you design an Ansible repository for a large enterprise?

Separate inventories by environment, reusable roles/collections by responsibility, playbooks as orchestration entry points, dependency/requirements files, tests/lint config and CI pipelines. Keep secrets outside plaintext Git and version shared content independently.

[⬆ Back to Question Index](#question-index)

---

### 288. How do you version roles and collections?

Use semantic versions/tags/releases, pin dependencies in `requirements.yml`/execution environments, publish immutable role/collection versions to an internal repository, and promote tested versions across environments.

[⬆ Back to Question Index](#question-index)

---

### 289. How do you prevent teams from creating unsafe playbooks?

Require pull requests/code owners, lint and policy checks, approved reusable roles/collections, restricted production credentials/inventories, least privilege, protected branches, tests/checks, and controller RBAC/approvals.

[⬆ Back to Question Index](#question-index)

---

### 290. How do you enforce coding standards for Ansible?

Standardize repository layout and naming, require FQCNs and idempotent modules, configure `ansible-lint`/`yamllint`, enforce them in PR pipelines, document role interfaces and test reusable content.

[⬆ Back to Question Index](#question-index)

---

### 291. How do you make Ansible deployments auditable?

Run through CI/CD or Automation Controller, retain job logs/results, record initiator/approver, Git commit, inventory, artifact/version and timestamps, protect logs, and integrate with centralized logging/change-management systems.

[⬆ Back to Question Index](#question-index)

---

### 292. How do you design disaster-recovery automation using Ansible?

Encode repeatable recovery steps: validate prerequisites, restore/provision required infrastructure, configure hosts, restore data from verified backups, deploy exact application versions, update DNS/LB, verify dependencies and health, and regularly test the playbooks in DR exercises with documented RTO/RPO ownership.

[⬆ Back to Question Index](#question-index)

---
