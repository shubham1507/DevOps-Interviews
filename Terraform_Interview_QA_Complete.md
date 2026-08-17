# Terraform Interview Questions & Answers — Beginner to Expert

> Comprehensive Terraform interview handbook with Azure, state management, modules, import, lifecycle, workspaces, CI/CD, security, troubleshooting and real-world scenarios.
>
> **Navigation:** all questions are listed first. Click any question to jump directly to its answer. Each answer contains a link back to this index.

## Question Index

### Beginner Fundamentals

1. [What is Terraform and why is it used?](#1-what-is-terraform-and-why-is-it-used)
2. [What is Infrastructure as Code (IaC)?](#2-what-is-infrastructure-as-code-iac)
3. [What are the main benefits of Terraform?](#3-what-are-the-main-benefits-of-terraform)
4. [How is Terraform different from manual infrastructure provisioning?](#4-how-is-terraform-different-from-manual-infrastructure-provisioning)
5. [How is Terraform different from Ansible?](#5-how-is-terraform-different-from-ansible)
6. [How is Terraform different from ARM templates or Bicep on Azure?](#6-how-is-terraform-different-from-arm-templates-or-bicep-on-azure)
7. [What is HashiCorp Configuration Language (HCL)?](#7-what-is-hashicorp-configuration-language-hcl)
8. [What files are commonly used in a Terraform project?](#8-what-files-are-commonly-used-in-a-terraform-project)
9. [What is a Terraform configuration?](#9-what-is-a-terraform-configuration)
10. [What is a resource block?](#10-what-is-a-resource-block)
11. [What is a data source?](#11-what-is-a-data-source)
12. [What is a provider?](#12-what-is-a-provider)
13. [What is a Terraform plugin?](#13-what-is-a-terraform-plugin)
14. [What is a module?](#14-what-is-a-module)
15. [What is state in Terraform?](#15-what-is-state-in-terraform)
16. [What is the Terraform dependency graph?](#16-what-is-the-terraform-dependency-graph)
17. [What does terraform init do?](#17-what-does-terraform-init-do)
18. [What does terraform validate do?](#18-what-does-terraform-validate-do)
19. [What does terraform fmt do?](#19-what-does-terraform-fmt-do)
20. [What does terraform plan do?](#20-what-does-terraform-plan-do)
21. [What does terraform apply do?](#21-what-does-terraform-apply-do)
22. [What does terraform destroy do?](#22-what-does-terraform-destroy-do)
23. [What is the purpose of .terraform directory?](#23-what-is-the-purpose-of-terraform-directory)
24. [What is .terraform.lock.hcl?](#24-what-is-terraformlockhcl)
25. [What is the difference between required_version and required_providers?](#25-what-is-the-difference-between-required_version-and-required_providers)
26. [What is the normal Terraform workflow?](#26-what-is-the-normal-terraform-workflow)

### HCL, Resources, Variables and Outputs

27. [What are input variables in Terraform?](#27-what-are-input-variables-in-terraform)
28. [What variable types does Terraform support?](#28-what-variable-types-does-terraform-support)
29. [What is the difference between string, number and bool?](#29-what-is-the-difference-between-string-number-and-bool)
30. [What are list, set and map types?](#30-what-are-list-set-and-map-types)
31. [What are object and tuple types?](#31-what-are-object-and-tuple-types)
32. [What is type constraint in Terraform?](#32-what-is-type-constraint-in-terraform)
33. [What is a default value for a variable?](#33-what-is-a-default-value-for-a-variable)
34. [What is variable validation?](#34-what-is-variable-validation)
35. [What are sensitive variables?](#35-what-are-sensitive-variables)
36. [Does marking a variable sensitive encrypt it?](#36-does-marking-a-variable-sensitive-encrypt-it)
37. [What is a local value?](#37-what-is-a-local-value)
38. [What is the difference between variables and locals?](#38-what-is-the-difference-between-variables-and-locals)
39. [What are output values?](#39-what-are-output-values)
40. [What is a sensitive output?](#40-what-is-a-sensitive-output)
41. [How do you reference one resource from another?](#41-how-do-you-reference-one-resource-from-another)
42. [What is an expression in Terraform?](#42-what-is-an-expression-in-terraform)
43. [What is string interpolation?](#43-what-is-string-interpolation)
44. [What are conditional expressions?](#44-what-are-conditional-expressions)
45. [What are for expressions?](#45-what-are-for-expressions)
46. [What is a splat expression?](#46-what-is-a-splat-expression)
47. [What are dynamic blocks?](#47-what-are-dynamic-blocks)
48. [When should you use a dynamic block?](#48-when-should-you-use-a-dynamic-block)
49. [What are Terraform functions?](#49-what-are-terraform-functions)
50. [What are common string functions in Terraform?](#50-what-are-common-string-functions-in-terraform)
51. [What are common collection functions in Terraform?](#51-what-are-common-collection-functions-in-terraform)
52. [What are common filesystem functions in Terraform?](#52-what-are-common-filesystem-functions-in-terraform)
53. [What is jsonencode and when is it useful?](#53-what-is-jsonencode-and-when-is-it-useful)
54. [What is yamlencode and when is it useful?](#54-what-is-yamlencode-and-when-is-it-useful)
55. [What is templatefile?](#55-what-is-templatefile)
56. [What is the difference between null and an empty value in Terraform?](#56-what-is-the-difference-between-null-and-an-empty-value-in-terraform)

### Providers and Azure Authentication

57. [What is the AzureRM provider?](#57-what-is-the-azurerm-provider)
58. [How do you configure the AzureRM provider?](#58-how-do-you-configure-the-azurerm-provider)
59. [What does the features block do in the AzureRM provider?](#59-what-does-the-features-block-do-in-the-azurerm-provider)
60. [How does Terraform authenticate to Azure?](#60-how-does-terraform-authenticate-to-azure)
61. [How do you authenticate Terraform using Azure CLI?](#61-how-do-you-authenticate-terraform-using-azure-cli)
62. [How do you authenticate Terraform using a service principal?](#62-how-do-you-authenticate-terraform-using-a-service-principal)
63. [How do you authenticate Terraform using workload identity or managed identity?](#63-how-do-you-authenticate-terraform-using-workload-identity-or-managed-identity)
64. [Which authentication method is preferred in CI/CD?](#64-which-authentication-method-is-preferred-in-cicd)
65. [How do you use multiple Azure subscriptions in one Terraform configuration?](#65-how-do-you-use-multiple-azure-subscriptions-in-one-terraform-configuration)
66. [What is a provider alias?](#66-what-is-a-provider-alias)
67. [How do you pass provider aliases to modules?](#67-how-do-you-pass-provider-aliases-to-modules)
68. [How do you pin provider versions?](#68-how-do-you-pin-provider-versions)
69. [Why should provider versions be constrained?](#69-why-should-provider-versions-be-constrained)
70. [What happens when terraform init downloads a provider?](#70-what-happens-when-terraform-init-downloads-a-provider)
71. [How do you upgrade provider versions?](#71-how-do-you-upgrade-provider-versions)
72. [What is terraform init -upgrade?](#72-what-is-terraform-init-upgrade)
73. [How do you troubleshoot provider authentication failures?](#73-how-do-you-troubleshoot-provider-authentication-failures)
74. [How do you troubleshoot provider registration or permission errors in Azure?](#74-how-do-you-troubleshoot-provider-registration-or-permission-errors-in-azure)

### State Management

75. [What is terraform.tfstate?](#75-what-is-terraformtfstate)
76. [Why is Terraform state important?](#76-why-is-terraform-state-important)
77. [What information is stored in a Terraform state file?](#77-what-information-is-stored-in-a-terraform-state-file)
78. [Can secrets exist in Terraform state?](#78-can-secrets-exist-in-terraform-state)
79. [Why should Terraform state be protected?](#79-why-should-terraform-state-be-protected)
80. [What is local state?](#80-what-is-local-state)
81. [What is remote state?](#81-what-is-remote-state)
82. [Why is remote state recommended for teams?](#82-why-is-remote-state-recommended-for-teams)
83. [What is a Terraform backend?](#83-what-is-a-terraform-backend)
84. [What is the azurerm backend?](#84-what-is-the-azurerm-backend)
85. [How do you store Terraform state in Azure Storage?](#85-how-do-you-store-terraform-state-in-azure-storage)
86. [What Azure resources are required for an Azure Storage backend?](#86-what-azure-resources-are-required-for-an-azure-storage-backend)
87. [How do you configure an azurerm backend?](#87-how-do-you-configure-an-azurerm-backend)
88. [What is backend initialization?](#88-what-is-backend-initialization)
89. [How do you migrate local state to a remote backend?](#89-how-do-you-migrate-local-state-to-a-remote-backend)
90. [What is state locking?](#90-what-is-state-locking)
91. [How does Azure Blob Storage support Terraform state locking?](#91-how-does-azure-blob-storage-support-terraform-state-locking)
92. [What happens if two engineers run terraform apply at the same time?](#92-what-happens-if-two-engineers-run-terraform-apply-at-the-same-time)
93. [How do you troubleshoot a locked Terraform state?](#93-how-do-you-troubleshoot-a-locked-terraform-state)
94. [When should you use terraform force-unlock?](#94-when-should-you-use-terraform-force-unlock)
95. [What is terraform state list?](#95-what-is-terraform-state-list)
96. [What is terraform state show?](#96-what-is-terraform-state-show)
97. [What is terraform state mv?](#97-what-is-terraform-state-mv)
98. [What is terraform state rm?](#98-what-is-terraform-state-rm)
99. [What is terraform state pull?](#99-what-is-terraform-state-pull)
100. [What is terraform state push?](#100-what-is-terraform-state-push)
101. [What is terraform show?](#101-what-is-terraform-show)
102. [What is terraform refresh and why is it generally avoided as a standalone workflow today?](#102-what-is-terraform-refresh-and-why-is-it-generally-avoided-as-a-standalone-workflow-today)
103. [What does terraform plan -refresh-only do?](#103-what-does-terraform-plan-refresh-only-do)
104. [What does terraform apply -refresh-only do?](#104-what-does-terraform-apply-refresh-only-do)
105. [What is terraform.tfstate.backup?](#105-what-is-terraformtfstatebackup)
106. [Who creates terraform.tfstate.backup?](#106-who-creates-terraformtfstatebackup)
107. [When is terraform.tfstate.backup created?](#107-when-is-terraformtfstatebackup-created)
108. [Can terraform.tfstate.backup restore infrastructure by itself?](#108-can-terraformtfstatebackup-restore-infrastructure-by-itself)
109. [How do you recover if the Terraform state file is deleted?](#109-how-do-you-recover-if-the-terraform-state-file-is-deleted)
110. [How do you recover from a corrupted state file?](#110-how-do-you-recover-from-a-corrupted-state-file)
111. [How do you protect remote state in Azure?](#111-how-do-you-protect-remote-state-in-azure)
112. [How do you separate state files between environments?](#112-how-do-you-separate-state-files-between-environments)
113. [What is state drift?](#113-what-is-state-drift)
114. [How does Terraform detect drift?](#114-how-does-terraform-detect-drift)

### Backends, Workspaces and Environment Strategy

115. [What is a backend in Terraform?](#115-what-is-a-backend-in-terraform)
116. [What is the difference between local and remote backends?](#116-what-is-the-difference-between-local-and-remote-backends)
117. [What is a partial backend configuration?](#117-what-is-a-partial-backend-configuration)
118. [Why should backend secrets not be hardcoded?](#118-why-should-backend-secrets-not-be-hardcoded)
119. [What is a Terraform workspace?](#119-what-is-a-terraform-workspace)
120. [What does the default workspace mean?](#120-what-does-the-default-workspace-mean)
121. [How do you create a workspace?](#121-how-do-you-create-a-workspace)
122. [How do you list workspaces?](#122-how-do-you-list-workspaces)
123. [How do you select a workspace?](#123-how-do-you-select-a-workspace)
124. [How do you delete a workspace?](#124-how-do-you-delete-a-workspace)
125. [How does each workspace maintain separate state?](#125-how-does-each-workspace-maintain-separate-state)
126. [When are CLI workspaces useful?](#126-when-are-cli-workspaces-useful)
127. [When should you avoid using workspaces for environment isolation?](#127-when-should-you-avoid-using-workspaces-for-environment-isolation)
128. [Workspaces vs separate directories: which is better?](#128-workspaces-vs-separate-directories-which-is-better)
129. [How do you manage dev, QA, staging and production environments?](#129-how-do-you-manage-dev-qa-staging-and-production-environments)
130. [How do you use backend keys to separate environment state?](#130-how-do-you-use-backend-keys-to-separate-environment-state)
131. [How do you structure a repository for multiple environments?](#131-how-do-you-structure-a-repository-for-multiple-environments)
132. [How do you avoid accidental production deployment from the wrong workspace?](#132-how-do-you-avoid-accidental-production-deployment-from-the-wrong-workspace)

### Meta-Arguments and Lifecycle

133. [What is count in Terraform?](#133-what-is-count-in-terraform)
134. [What is for_each in Terraform?](#134-what-is-for_each-in-terraform)
135. [What is the difference between count and for_each?](#135-what-is-the-difference-between-count-and-for_each)
136. [When is for_each safer than count?](#136-when-is-for_each-safer-than-count)
137. [What is depends_on?](#137-what-is-depends_on)
138. [When should you explicitly use depends_on?](#138-when-should-you-explicitly-use-depends_on)
139. [What is the provider meta-argument?](#139-what-is-the-provider-meta-argument)
140. [What is lifecycle in Terraform?](#140-what-is-lifecycle-in-terraform)
141. [What does create_before_destroy do?](#141-what-does-create_before_destroy-do)
142. [What does prevent_destroy do?](#142-what-does-prevent_destroy-do)
143. [What does ignore_changes do?](#143-what-does-ignore_changes-do)
144. [What does replace_triggered_by do?](#144-what-does-replace_triggered_by-do)
145. [What is precondition in Terraform?](#145-what-is-precondition-in-terraform)
146. [What is postcondition in Terraform?](#146-what-is-postcondition-in-terraform)
147. [What is the lifecycle impact of renaming a resource block?](#147-what-is-the-lifecycle-impact-of-renaming-a-resource-block)
148. [How do you prevent accidental deletion of production resources?](#148-how-do-you-prevent-accidental-deletion-of-production-resources)
149. [How do you handle a resource attribute changed manually but intentionally?](#149-how-do-you-handle-a-resource-attribute-changed-manually-but-intentionally)
150. [What are the risks of using ignore_changes?](#150-what-are-the-risks-of-using-ignore_changes)

### Modules and Reusability

151. [What is a Terraform module?](#151-what-is-a-terraform-module)
152. [What is the root module?](#152-what-is-the-root-module)
153. [What is a child module?](#153-what-is-a-child-module)
154. [Why should modules be used?](#154-why-should-modules-be-used)
155. [How do you call a module?](#155-how-do-you-call-a-module)
156. [How do you pass variables to a module?](#156-how-do-you-pass-variables-to-a-module)
157. [How do you consume module outputs?](#157-how-do-you-consume-module-outputs)
158. [How do you reference a local module?](#158-how-do-you-reference-a-local-module)
159. [How do you use a module from Git?](#159-how-do-you-use-a-module-from-git)
160. [How do you use a module from Terraform Registry?](#160-how-do-you-use-a-module-from-terraform-registry)
161. [How do you pin a module version?](#161-how-do-you-pin-a-module-version)
162. [How should a reusable module be structured?](#162-how-should-a-reusable-module-be-structured)
163. [What should go in variables.tf?](#163-what-should-go-in-variablestf)
164. [What should go in outputs.tf?](#164-what-should-go-in-outputstf)
165. [What should go in versions.tf?](#165-what-should-go-in-versionstf)
166. [What are module composition best practices?](#166-what-are-module-composition-best-practices)
167. [How do you design modules for Azure VNets and subnets?](#167-how-do-you-design-modules-for-azure-vnets-and-subnets)
168. [How do you design a reusable VM module?](#168-how-do-you-design-a-reusable-vm-module)
169. [How do you design a reusable AKS module?](#169-how-do-you-design-a-reusable-aks-module)
170. [How do you avoid creating overly complex modules?](#170-how-do-you-avoid-creating-overly-complex-modules)
171. [How do you version internal Terraform modules?](#171-how-do-you-version-internal-terraform-modules)
172. [How do you test Terraform modules?](#172-how-do-you-test-terraform-modules)

### Import, Existing Infrastructure and Refactoring

173. [What is terraform import?](#173-what-is-terraform-import)
174. [When do you use terraform import?](#174-when-do-you-use-terraform-import)
175. [Does terraform import automatically generate complete configuration?](#175-does-terraform-import-automatically-generate-complete-configuration)
176. [What are import blocks?](#176-what-are-import-blocks)
177. [How do you import an existing Azure resource into Terraform?](#177-how-do-you-import-an-existing-azure-resource-into-terraform)
178. [How do you import an Azure resource group?](#178-how-do-you-import-an-azure-resource-group)
179. [How do you import an Azure storage account?](#179-how-do-you-import-an-azure-storage-account)
180. [How do you validate an import using terraform plan?](#180-how-do-you-validate-an-import-using-terraform-plan)
181. [What happens if imported configuration does not match the real resource?](#181-what-happens-if-imported-configuration-does-not-match-the-real-resource)
182. [How do you bring manually created infrastructure under Terraform management?](#182-how-do-you-bring-manually-created-infrastructure-under-terraform-management)
183. [What is a moved block?](#183-what-is-a-moved-block)
184. [When should you use a moved block?](#184-when-should-you-use-a-moved-block)
185. [How do you rename a Terraform resource without recreating it?](#185-how-do-you-rename-a-terraform-resource-without-recreating-it)
186. [How do you move a resource between modules?](#186-how-do-you-move-a-resource-between-modules)
187. [What happens if you simply rename a resource block without moving state?](#187-what-happens-if-you-simply-rename-a-resource-block-without-moving-state)
188. [What is removed block functionality used for?](#188-what-is-removed-block-functionality-used-for)
189. [How do you stop managing a resource without destroying it?](#189-how-do-you-stop-managing-a-resource-without-destroying-it)
190. [What is terraform state rm and when is it used?](#190-what-is-terraform-state-rm-and-when-is-it-used)
191. [What is terraform state mv and when is it used?](#191-what-is-terraform-state-mv-and-when-is-it-used)
192. [How do you recover when .tf configuration files are deleted but state still exists?](#192-how-do-you-recover-when-tf-configuration-files-are-deleted-but-state-still-exists)

### Dependency Management and Provisioners

193. [How does Terraform determine resource creation order?](#193-how-does-terraform-determine-resource-creation-order)
194. [What are implicit dependencies?](#194-what-are-implicit-dependencies)
195. [What are explicit dependencies?](#195-what-are-explicit-dependencies)
196. [What does depends_on do?](#196-what-does-depends_on-do)
197. [What is a provisioner?](#197-what-is-a-provisioner)
198. [What is local-exec?](#198-what-is-local-exec)
199. [What is remote-exec?](#199-what-is-remote-exec)
200. [Why are provisioners considered a last resort?](#200-why-are-provisioners-considered-a-last-resort)
201. [What is a null_resource?](#201-what-is-a-null_resource)
202. [What is terraform_data?](#202-what-is-terraform_data)
203. [What are triggers in null_resource or terraform_data workflows?](#203-what-are-triggers-in-null_resource-or-terraform_data-workflows)
204. [When would you use local-exec safely?](#204-when-would-you-use-local-exec-safely)
205. [What alternatives should be preferred over remote-exec?](#205-what-alternatives-should-be-preferred-over-remote-exec)
206. [How do you pass cloud-init or custom data to a VM instead of using provisioners?](#206-how-do-you-pass-cloud-init-or-custom-data-to-a-vm-instead-of-using-provisioners)

### Azure Resource Scenarios

207. [How do you create an Azure resource group using Terraform?](#207-how-do-you-create-an-azure-resource-group-using-terraform)
208. [How do you create an Azure VNet and subnets using Terraform?](#208-how-do-you-create-an-azure-vnet-and-subnets-using-terraform)
209. [How do you create an NSG and associate it with a subnet?](#209-how-do-you-create-an-nsg-and-associate-it-with-a-subnet)
210. [How do you create a public IP and network interface?](#210-how-do-you-create-a-public-ip-and-network-interface)
211. [How do you create an Azure VM using Terraform?](#211-how-do-you-create-an-azure-vm-using-terraform)
212. [How do you create multiple VMs using for_each?](#212-how-do-you-create-multiple-vms-using-for_each)
213. [How do you create an Azure Load Balancer using Terraform?](#213-how-do-you-create-an-azure-load-balancer-using-terraform)
214. [How do you create an Application Gateway using Terraform?](#214-how-do-you-create-an-application-gateway-using-terraform)
215. [How do you create an Azure Storage Account using Terraform?](#215-how-do-you-create-an-azure-storage-account-using-terraform)
216. [How do you create an Azure Key Vault using Terraform?](#216-how-do-you-create-an-azure-key-vault-using-terraform)
217. [How do you create an Azure SQL Database using Terraform?](#217-how-do-you-create-an-azure-sql-database-using-terraform)
218. [How do you create an Azure App Service using Terraform?](#218-how-do-you-create-an-azure-app-service-using-terraform)
219. [How do you create an Azure Container Registry using Terraform?](#219-how-do-you-create-an-azure-container-registry-using-terraform)
220. [How do you create AKS using Terraform?](#220-how-do-you-create-aks-using-terraform)
221. [How do you create private endpoints using Terraform?](#221-how-do-you-create-private-endpoints-using-terraform)
222. [How do you configure VNet peering using Terraform?](#222-how-do-you-configure-vnet-peering-using-terraform)
223. [How do you create route tables and associate routes?](#223-how-do-you-create-route-tables-and-associate-routes)
224. [How do you use availability zones in Terraform?](#224-how-do-you-use-availability-zones-in-terraform)
225. [How do you create a hub-and-spoke network using Terraform?](#225-how-do-you-create-a-hub-and-spoke-network-using-terraform)
226. [How do you design a three-tier Azure application using Terraform?](#226-how-do-you-design-a-three-tier-azure-application-using-terraform)

### Terraform CLI and Troubleshooting

227. [What are the most important Terraform CLI commands?](#227-what-are-the-most-important-terraform-cli-commands)
228. [How do you inspect Terraform version and providers?](#228-how-do-you-inspect-terraform-version-and-providers)
229. [How do you format all Terraform files recursively?](#229-how-do-you-format-all-terraform-files-recursively)
230. [How do you validate a configuration?](#230-how-do-you-validate-a-configuration)
231. [How do you save a Terraform plan to a file?](#231-how-do-you-save-a-terraform-plan-to-a-file)
232. [How do you apply a saved plan?](#232-how-do-you-apply-a-saved-plan)
233. [Why is applying a saved plan useful in CI/CD?](#233-why-is-applying-a-saved-plan-useful-in-cicd)
234. [What is terraform console?](#234-what-is-terraform-console)
235. [How do you use terraform console for troubleshooting expressions?](#235-how-do-you-use-terraform-console-for-troubleshooting-expressions)
236. [How do you enable Terraform debug logging?](#236-how-do-you-enable-terraform-debug-logging)
237. [What does TF_LOG do?](#237-what-does-tf_log-do)
238. [What does TF_LOG_PATH do?](#238-what-does-tf_log_path-do)
239. [How do you troubleshoot terraform init failures?](#239-how-do-you-troubleshoot-terraform-init-failures)
240. [How do you troubleshoot dependency lock file issues?](#240-how-do-you-troubleshoot-dependency-lock-file-issues)
241. [How do you troubleshoot provider version conflicts?](#241-how-do-you-troubleshoot-provider-version-conflicts)
242. [How do you troubleshoot cyclic dependency errors?](#242-how-do-you-troubleshoot-cyclic-dependency-errors)
243. [How do you troubleshoot 'resource already exists' errors?](#243-how-do-you-troubleshoot-resource-already-exists-errors)
244. [How do you troubleshoot a plan that wants to recreate a resource unexpectedly?](#244-how-do-you-troubleshoot-a-plan-that-wants-to-recreate-a-resource-unexpectedly)
245. [How do you troubleshoot state drift?](#245-how-do-you-troubleshoot-state-drift)
246. [How do you troubleshoot a failed terraform apply?](#246-how-do-you-troubleshoot-a-failed-terraform-apply)
247. [What should you do after a partial Terraform apply failure?](#247-what-should-you-do-after-a-partial-terraform-apply-failure)
248. [How do you troubleshoot remote backend access issues?](#248-how-do-you-troubleshoot-remote-backend-access-issues)
249. [How do you troubleshoot Azure RBAC failures from Terraform?](#249-how-do-you-troubleshoot-azure-rbac-failures-from-terraform)
250. [How do you troubleshoot a stale state lock?](#250-how-do-you-troubleshoot-a-stale-state-lock)
251. [How do you investigate why Terraform wants to delete a resource?](#251-how-do-you-investigate-why-terraform-wants-to-delete-a-resource)

### CI/CD and Azure DevOps

252. [How do you integrate Terraform with Azure DevOps Pipelines?](#252-how-do-you-integrate-terraform-with-azure-devops-pipelines)
253. [What stages should a Terraform CI/CD pipeline contain?](#253-what-stages-should-a-terraform-cicd-pipeline-contain)
254. [How do you run terraform fmt in CI?](#254-how-do-you-run-terraform-fmt-in-ci)
255. [How do you run terraform validate in CI?](#255-how-do-you-run-terraform-validate-in-ci)
256. [How do you run terraform plan in a pull request pipeline?](#256-how-do-you-run-terraform-plan-in-a-pull-request-pipeline)
257. [How do you publish and review a Terraform plan artifact?](#257-how-do-you-publish-and-review-a-terraform-plan-artifact)
258. [How do you apply only an approved saved plan?](#258-how-do-you-apply-only-an-approved-saved-plan)
259. [How do you add manual approval before production apply?](#259-how-do-you-add-manual-approval-before-production-apply)
260. [How do you authenticate Terraform from Azure DevOps securely?](#260-how-do-you-authenticate-terraform-from-azure-devops-securely)
261. [How do you use an Azure service connection with Terraform?](#261-how-do-you-use-an-azure-service-connection-with-terraform)
262. [How do you use workload identity federation for Terraform pipelines?](#262-how-do-you-use-workload-identity-federation-for-terraform-pipelines)
263. [Where should Terraform secrets be stored?](#263-where-should-terraform-secrets-be-stored)
264. [How do you integrate Azure Key Vault with Terraform pipelines?](#264-how-do-you-integrate-azure-key-vault-with-terraform-pipelines)
265. [How do you prevent secrets from leaking into pipeline logs?](#265-how-do-you-prevent-secrets-from-leaking-into-pipeline-logs)
266. [How do you use environment-specific tfvars in pipelines?](#266-how-do-you-use-environment-specific-tfvars-in-pipelines)
267. [How do you prevent concurrent Terraform applies in CI/CD?](#267-how-do-you-prevent-concurrent-terraform-applies-in-cicd)
268. [How do you implement Terraform state locking in pipelines?](#268-how-do-you-implement-terraform-state-locking-in-pipelines)
269. [How do you handle plan/apply separation across pipeline stages?](#269-how-do-you-handle-planapply-separation-across-pipeline-stages)
270. [How do you design rollback for Terraform?](#270-how-do-you-design-rollback-for-terraform)
271. [Can Terraform simply roll back to the previous infrastructure state?](#271-can-terraform-simply-roll-back-to-the-previous-infrastructure-state)
272. [How do you use Git branches and pull requests with Terraform?](#272-how-do-you-use-git-branches-and-pull-requests-with-terraform)
273. [How do you implement policy checks before apply?](#273-how-do-you-implement-policy-checks-before-apply)
274. [How do you scan Terraform for security issues in CI/CD?](#274-how-do-you-scan-terraform-for-security-issues-in-cicd)
275. [Which tools can scan Terraform or IaC code?](#275-which-tools-can-scan-terraform-or-iac-code)
276. [How do you combine Terraform and Ansible in a deployment pipeline?](#276-how-do-you-combine-terraform-and-ansible-in-a-deployment-pipeline)

### Security and Governance

277. [How do you secure Terraform state?](#277-how-do-you-secure-terraform-state)
278. [How do you handle secrets in Terraform?](#278-how-do-you-handle-secrets-in-terraform)
279. [Why should secrets not be hardcoded in .tf or tfvars files?](#279-why-should-secrets-not-be-hardcoded-in-tf-or-tfvars-files)
280. [How do you use environment variables for provider authentication?](#280-how-do-you-use-environment-variables-for-provider-authentication)
281. [How do you use Azure Key Vault with Terraform?](#281-how-do-you-use-azure-key-vault-with-terraform)
282. [How do you implement least privilege for Terraform service principals?](#282-how-do-you-implement-least-privilege-for-terraform-service-principals)
283. [How do you restrict who can apply Terraform to production?](#283-how-do-you-restrict-who-can-apply-terraform-to-production)
284. [How do you protect state storage with RBAC and networking?](#284-how-do-you-protect-state-storage-with-rbac-and-networking)
285. [How do you prevent public access to the Terraform state storage account?](#285-how-do-you-prevent-public-access-to-the-terraform-state-storage-account)
286. [How do you encrypt Terraform state at rest?](#286-how-do-you-encrypt-terraform-state-at-rest)
287. [How do you protect sensitive Terraform outputs?](#287-how-do-you-protect-sensitive-terraform-outputs)
288. [What is policy as code?](#288-what-is-policy-as-code)
289. [What is Sentinel?](#289-what-is-sentinel)
290. [What is Open Policy Agent (OPA)?](#290-what-is-open-policy-agent-opa)
291. [What is Conftest?](#291-what-is-conftest)
292. [How do you enforce mandatory tags using policy checks?](#292-how-do-you-enforce-mandatory-tags-using-policy-checks)
293. [How do you enforce approved Azure regions?](#293-how-do-you-enforce-approved-azure-regions)
294. [How do you prevent creation of public IP addresses?](#294-how-do-you-prevent-creation-of-public-ip-addresses)
295. [How do you enforce naming standards in Terraform?](#295-how-do-you-enforce-naming-standards-in-terraform)
296. [How do you audit Terraform changes?](#296-how-do-you-audit-terraform-changes)

### Real-World Scenario-Based Questions

297. [You have existing Azure resources created manually. How do you bring them under Terraform management?](#297-you-have-existing-azure-resources-created-manually-how-do-you-bring-them-under-terraform-management)
298. [An Azure App Service is managed by Terraform, but someone manually adds tags in the portal. What happens on the next plan/apply?](#298-an-azure-app-service-is-managed-by-terraform-but-someone-manually-adds-tags-in-the-portal-what-happens-on-the-next-planapply)
299. [How do you keep an intentional manual tag change without Terraform removing it?](#299-how-do-you-keep-an-intentional-manual-tag-change-without-terraform-removing-it)
300. [Your Terraform state was moved to Azure Blob Storage. How do you migrate safely?](#300-your-terraform-state-was-moved-to-azure-blob-storage-how-do-you-migrate-safely)
301. [Two developers run terraform apply at the same time. What happens?](#301-two-developers-run-terraform-apply-at-the-same-time-what-happens)
302. [Your Terraform configuration files are deleted but the remote state still exists. How do you recover?](#302-your-terraform-configuration-files-are-deleted-but-the-remote-state-still-exists-how-do-you-recover)
303. [Your remote Terraform state file is accidentally deleted. How do you recover?](#303-your-remote-terraform-state-file-is-accidentally-deleted-how-do-you-recover)
304. [Terraform wants to destroy and recreate a production resource. How do you investigate?](#304-terraform-wants-to-destroy-and-recreate-a-production-resource-how-do-you-investigate)
305. [How do you change a resource name without destroying the actual Azure resource?](#305-how-do-you-change-a-resource-name-without-destroying-the-actual-azure-resource)
306. [How do you move resources into a new module without recreation?](#306-how-do-you-move-resources-into-a-new-module-without-recreation)
307. [You need to deploy the same infrastructure to dev, QA and prod. How do you structure it?](#307-you-need-to-deploy-the-same-infrastructure-to-dev-qa-and-prod-how-do-you-structure-it)
308. [When would you use workspaces versus separate environment folders?](#308-when-would-you-use-workspaces-versus-separate-environment-folders)
309. [You need zero/minimal downtime during replacement. Which lifecycle option could help?](#309-you-need-zerominimal-downtime-during-replacement-which-lifecycle-option-could-help)
310. [How do you stop someone from accidentally destroying a production database?](#310-how-do-you-stop-someone-from-accidentally-destroying-a-production-database)
311. [A value is changed outside Terraform. How do you detect and reconcile the drift?](#311-a-value-is-changed-outside-terraform-how-do-you-detect-and-reconcile-the-drift)
312. [Terraform plan shows unexpected changes after a provider upgrade. What do you do?](#312-terraform-plan-shows-unexpected-changes-after-a-provider-upgrade-what-do-you-do)
313. [terraform apply fails halfway through. Is everything automatically rolled back?](#313-terraform-apply-fails-halfway-through-is-everything-automatically-rolled-back)
314. [A resource was created successfully in Azure but Terraform did not record it correctly. What do you do?](#314-a-resource-was-created-successfully-in-azure-but-terraform-did-not-record-it-correctly-what-do-you-do)
315. [How do you remove a resource from Terraform management without deleting it?](#315-how-do-you-remove-a-resource-from-terraform-management-without-deleting-it)
316. [How do you recreate a resource intentionally?](#316-how-do-you-recreate-a-resource-intentionally)
317. [What replaced the old terraform taint workflow?](#317-what-replaced-the-old-terraform-taint-workflow)
318. [How do you force replacement using terraform apply -replace?](#318-how-do-you-force-replacement-using-terraform-apply-replace)
319. [How do you safely rotate an Azure service principal credential used by Terraform?](#319-how-do-you-safely-rotate-an-azure-service-principal-credential-used-by-terraform)
320. [How do you deploy infrastructure across multiple Azure subscriptions?](#320-how-do-you-deploy-infrastructure-across-multiple-azure-subscriptions)
321. [How do you deploy resources across multiple Azure regions?](#321-how-do-you-deploy-resources-across-multiple-azure-regions)
322. [How do you model hub-and-spoke networking with reusable modules?](#322-how-do-you-model-hub-and-spoke-networking-with-reusable-modules)
323. [How do you handle dependencies between network, compute and database modules?](#323-how-do-you-handle-dependencies-between-network-compute-and-database-modules)
324. [How do you share outputs between independent Terraform stacks?](#324-how-do-you-share-outputs-between-independent-terraform-stacks)
325. [How do you consume remote state outputs?](#325-how-do-you-consume-remote-state-outputs)
326. [What are the risks of terraform_remote_state?](#326-what-are-the-risks-of-terraform_remote_state)
327. [How do you reduce blast radius in a large Terraform estate?](#327-how-do-you-reduce-blast-radius-in-a-large-terraform-estate)
328. [How do you organize state for hundreds of resources?](#328-how-do-you-organize-state-for-hundreds-of-resources)
329. [How do you import hundreds of existing Azure resources?](#329-how-do-you-import-hundreds-of-existing-azure-resources)
330. [How do you refactor a monolithic Terraform configuration into modules safely?](#330-how-do-you-refactor-a-monolithic-terraform-configuration-into-modules-safely)
331. [How do you handle a Terraform deployment when a resource must never be recreated?](#331-how-do-you-handle-a-terraform-deployment-when-a-resource-must-never-be-recreated)

### Expert Architecture and Best Practices

332. [Explain Terraform architecture end-to-end.](#332-explain-terraform-architecture-end-to-end)
333. [How does Terraform build and use its dependency graph?](#333-how-does-terraform-build-and-use-its-dependency-graph)
334. [How does Terraform compare configuration, state and real infrastructure?](#334-how-does-terraform-compare-configuration-state-and-real-infrastructure)
335. [What happens internally during terraform plan?](#335-what-happens-internally-during-terraform-plan)
336. [What happens internally during terraform apply?](#336-what-happens-internally-during-terraform-apply)
337. [What is provider schema and why does it matter?](#337-what-is-provider-schema-and-why-does-it-matter)
338. [What is the role of the dependency lock file?](#338-what-is-the-role-of-the-dependency-lock-file)
339. [How do you design Terraform for a large enterprise?](#339-how-do-you-design-terraform-for-a-large-enterprise)
340. [How do you define state boundaries?](#340-how-do-you-define-state-boundaries)
341. [What factors determine whether resources should share one state?](#341-what-factors-determine-whether-resources-should-share-one-state)
342. [How do you reduce Terraform blast radius?](#342-how-do-you-reduce-terraform-blast-radius)
343. [How do you handle cross-stack dependencies?](#343-how-do-you-handle-cross-stack-dependencies)
344. [What is the safest way to expose outputs between stacks?](#344-what-is-the-safest-way-to-expose-outputs-between-stacks)
345. [How do you version and publish internal modules?](#345-how-do-you-version-and-publish-internal-modules)
346. [How do you enforce module usage instead of direct resource creation?](#346-how-do-you-enforce-module-usage-instead-of-direct-resource-creation)
347. [How do you standardize provider versions across teams?](#347-how-do-you-standardize-provider-versions-across-teams)
348. [How do you handle provider upgrades in an enterprise?](#348-how-do-you-handle-provider-upgrades-in-an-enterprise)
349. [How do you test Terraform code before production?](#349-how-do-you-test-terraform-code-before-production)
350. [What is Terratest?](#350-what-is-terratest)
351. [What is terraform test?](#351-what-is-terraform-test)
352. [How do you use static analysis and policy-as-code together?](#352-how-do-you-use-static-analysis-and-policy-as-code-together)
353. [How do you make Terraform runs reproducible?](#353-how-do-you-make-terraform-runs-reproducible)
354. [How do you design disaster recovery for Terraform state?](#354-how-do-you-design-disaster-recovery-for-terraform-state)
355. [How do you back up Azure Blob Terraform state?](#355-how-do-you-back-up-azure-blob-terraform-state)
356. [How do you implement state retention/versioning?](#356-how-do-you-implement-state-retentionversioning)
357. [How do you perform safe state surgery?](#357-how-do-you-perform-safe-state-surgery)
358. [Why should terraform state push be used very carefully?](#358-why-should-terraform-state-push-be-used-very-carefully)
359. [How do you troubleshoot a dependency cycle between modules?](#359-how-do-you-troubleshoot-a-dependency-cycle-between-modules)
360. [How do you manage resources with eventual consistency issues?](#360-how-do-you-manage-resources-with-eventual-consistency-issues)
361. [How do you avoid using -target as a normal deployment strategy?](#361-how-do-you-avoid-using-target-as-a-normal-deployment-strategy)
362. [When is -target appropriate?](#362-when-is-target-appropriate)
363. [How do you use moved blocks during large refactoring?](#363-how-do-you-use-moved-blocks-during-large-refactoring)
364. [How do you use import blocks in repeatable import workflows?](#364-how-do-you-use-import-blocks-in-repeatable-import-workflows)
365. [How do you prevent accidental drift from portal changes?](#365-how-do-you-prevent-accidental-drift-from-portal-changes)
366. [How do you combine Terraform, Azure Policy, CI/CD and GitOps-style controls for enterprise governance?](#366-how-do-you-combine-terraform-azure-policy-cicd-and-gitops-style-controls-for-enterprise-governance)

---

# Answers

## Beginner Fundamentals

### 1. What is Terraform and why is it used?

Terraform is an **Infrastructure as Code (IaC)** tool used to declare, provision and manage infrastructure through configuration files.

A normal workflow is:

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
```

Terraform is especially useful when infrastructure must be repeatable, reviewable, version-controlled and consistently deployed across environments.

[⬆ Back to Question Index](#question-index)

---

### 2. What is Infrastructure as Code (IaC)?

**Infrastructure as Code (IaC)** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 3. What are the main benefits of Terraform?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 4. How is Terraform different from manual infrastructure provisioning?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 5. How is Terraform different from Ansible?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 6. How is Terraform different from ARM templates or Bicep on Azure?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 7. What is HashiCorp Configuration Language (HCL)?

**HashiCorp Configuration Language (HCL)** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 8. What files are commonly used in a Terraform project?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 9. What is a Terraform configuration?

**a Terraform configuration** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 10. What is a resource block?

**a resource block** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 11. What is a data source?

**a data source** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 12. What is a provider?

**a provider** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 13. What is a Terraform plugin?

**a Terraform plugin** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 14. What is a module?

**a module** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 15. What is state in Terraform?

**state in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 16. What is the Terraform dependency graph?

**the Terraform dependency graph** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 17. What does terraform init do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 18. What does terraform validate do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 19. What does terraform fmt do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 20. What does terraform plan do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 21. What does terraform apply do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 22. What does terraform destroy do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 23. What is the purpose of .terraform directory?

**the purpose of .terraform directory** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 24. What is .terraform.lock.hcl?

**.terraform.lock.hcl** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 25. What is the difference between required_version and required_providers?

**the difference between required_version and required_providers** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 26. What is the normal Terraform workflow?

**the normal Terraform workflow** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

## HCL, Resources, Variables and Outputs

### 27. What are input variables in Terraform?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 28. What variable types does Terraform support?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 29. What is the difference between string, number and bool?

**the difference between string, number and bool** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 30. What are list, set and map types?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 31. What are object and tuple types?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 32. What is type constraint in Terraform?

**type constraint in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 33. What is a default value for a variable?

**a default value for a variable** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 34. What is variable validation?

**variable validation** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 35. What are sensitive variables?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 36. Does marking a variable sensitive encrypt it?

The answer depends on the exact Terraform mechanism. Distinguish **what Terraform records in state** from **what it actually changes in infrastructure**, and avoid assuming that state changes automatically provide infrastructure recovery.

[⬆ Back to Question Index](#question-index)

---

### 37. What is a local value?

**a local value** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 38. What is the difference between variables and locals?

**the difference between variables and locals** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 39. What are output values?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 40. What is a sensitive output?

**a sensitive output** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 41. How do you reference one resource from another?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 42. What is an expression in Terraform?

**an expression in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 43. What is string interpolation?

**string interpolation** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 44. What are conditional expressions?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 45. What are for expressions?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 46. What is a splat expression?

**a splat expression** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 47. What are dynamic blocks?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 48. When should you use a dynamic block?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 49. What are Terraform functions?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 50. What are common string functions in Terraform?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 51. What are common collection functions in Terraform?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 52. What are common filesystem functions in Terraform?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 53. What is jsonencode and when is it useful?

**jsonencode and when is it useful** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 54. What is yamlencode and when is it useful?

**yamlencode and when is it useful** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 55. What is templatefile?

**templatefile** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 56. What is the difference between null and an empty value in Terraform?

**the difference between null and an empty value in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

## Providers and Azure Authentication

### 57. What is the AzureRM provider?

**the AzureRM provider** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 58. How do you configure the AzureRM provider?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 59. What does the features block do in the AzureRM provider?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 60. How does Terraform authenticate to Azure?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 61. How do you authenticate Terraform using Azure CLI?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 62. How do you authenticate Terraform using a service principal?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 63. How do you authenticate Terraform using workload identity or managed identity?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 64. Which authentication method is preferred in CI/CD?

Prefer the option that supports least privilege, short-lived credentials, auditable CI/CD execution and no hardcoded secrets. In Azure pipelines, workload identity federation/managed identity patterns are preferable when available.

[⬆ Back to Question Index](#question-index)

---

### 65. How do you use multiple Azure subscriptions in one Terraform configuration?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 66. What is a provider alias?

**a provider alias** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 67. How do you pass provider aliases to modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 68. How do you pin provider versions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 69. Why should provider versions be constrained?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 70. What happens when terraform init downloads a provider?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 71. How do you upgrade provider versions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 72. What is terraform init -upgrade?

**terraform init -upgrade** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 73. How do you troubleshoot provider authentication failures?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 74. How do you troubleshoot provider registration or permission errors in Azure?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## State Management

### 75. What is terraform.tfstate?

`terraform.tfstate` is Terraform's state snapshot. It maps Terraform resource addresses to real infrastructure objects and stores attributes Terraform needs to calculate future changes.

State is operationally critical and can contain sensitive values, so team environments should use a protected remote backend rather than casually sharing local state.

[⬆ Back to Question Index](#question-index)

---

### 76. Why is Terraform state important?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 77. What information is stored in a Terraform state file?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 78. Can secrets exist in Terraform state?

The answer depends on the exact Terraform mechanism. Distinguish **what Terraform records in state** from **what it actually changes in infrastructure**, and avoid assuming that state changes automatically provide infrastructure recovery.

[⬆ Back to Question Index](#question-index)

---

### 79. Why should Terraform state be protected?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 80. What is local state?

**local state** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 81. What is remote state?

Remote state stores Terraform state in a shared backend instead of only on the engineer's workstation. For Azure, a common backend is an Azure Storage Account blob container.

Benefits include centralized state, controlled access, collaboration, locking support and backend-level durability/versioning.

[⬆ Back to Question Index](#question-index)

---

### 82. Why is remote state recommended for teams?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 83. What is a Terraform backend?

**a Terraform backend** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 84. What is the azurerm backend?

**the azurerm backend** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 85. How do you store Terraform state in Azure Storage?

Create a dedicated resource group, storage account and blob container, then configure the backend:

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstateprod001"
    container_name       = "tfstate"
    key                  = "prod/network.tfstate"
  }
}
```

Then initialize:

```bash
terraform init
```

For production, secure the storage account with RBAC, restricted networking, encryption, versioning/soft delete and controlled pipeline identity.

[⬆ Back to Question Index](#question-index)

---

### 86. What Azure resources are required for an Azure Storage backend?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 87. How do you configure an azurerm backend?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 88. What is backend initialization?

**backend initialization** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 89. How do you migrate local state to a remote backend?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 90. What is state locking?

**state locking** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 91. How does Azure Blob Storage support Terraform state locking?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 92. What happens if two engineers run terraform apply at the same time?

With a backend that supports state locking, the first operation obtains the lock and the second should fail/wait rather than modify the same state concurrently. This protects state consistency.

Do not bypass locking with `-lock=false` as a normal workaround. Investigate the active operation or stale lock instead.

[⬆ Back to Question Index](#question-index)

---

### 93. How do you troubleshoot a locked Terraform state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 94. When should you use terraform force-unlock?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 95. What is terraform state list?

**terraform state list** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 96. What is terraform state show?

**terraform state show** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 97. What is terraform state mv?

**terraform state mv** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 98. What is terraform state rm?

**terraform state rm** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 99. What is terraform state pull?

**terraform state pull** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 100. What is terraform state push?

**terraform state push** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 101. What is terraform show?

**terraform show** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 102. What is terraform refresh and why is it generally avoided as a standalone workflow today?

**terraform refresh and why is it generally avoided as a standalone workflow today** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 103. What does terraform plan -refresh-only do?

It creates a plan that updates Terraform state/output values to match changes detected in real infrastructure **without proposing configuration-driven infrastructure changes**.

```bash
terraform plan -refresh-only
terraform apply -refresh-only
```

This is generally preferable to treating standalone `terraform refresh` as the normal reconciliation workflow because you can review the refresh-only plan before changing state.

[⬆ Back to Question Index](#question-index)

---

### 104. What does terraform apply -refresh-only do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 105. What is terraform.tfstate.backup?

`terraform.tfstate.backup` is Terraform's local backup of the **previous state snapshot** when Terraform writes a new local state.

Important interview point: it is not specifically a "destroy backup" and it does **not** recreate infrastructure by itself. It helps recover a previous state snapshot. Infrastructure recovery still depends on valid configuration, real resource status, and careful state reconciliation.

[⬆ Back to Question Index](#question-index)

---

### 106. Who creates terraform.tfstate.backup?

Terraform creates the local `terraform.tfstate.backup` file automatically when it replaces an existing local state snapshot with a newer one. It represents the prior state version.

With remote backends, recovery/versioning is normally handled by the backend's mechanisms—for example Azure Blob versioning/soft delete—rather than relying on a local `.backup` file.

[⬆ Back to Question Index](#question-index)

---

### 107. When is terraform.tfstate.backup created?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 108. Can terraform.tfstate.backup restore infrastructure by itself?

The answer depends on the exact Terraform mechanism. Distinguish **what Terraform records in state** from **what it actually changes in infrastructure**, and avoid assuming that state changes automatically provide infrastructure recovery.

[⬆ Back to Question Index](#question-index)

---

### 109. How do you recover if the Terraform state file is deleted?

First stop all applies. Recovery depends on the backend:

1. Restore the state using backend versioning/soft-delete/backup if available.
2. Verify it with `terraform state list`, `terraform state show` and `terraform plan`.
3. If no state backup exists, reconstruct configuration and **import** existing resources back into state.
4. Do not run an unreviewed `apply` against an empty state, because Terraform may try to create duplicate infrastructure.

[⬆ Back to Question Index](#question-index)

---

### 110. How do you recover from a corrupted state file?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 111. How do you protect remote state in Azure?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 112. How do you separate state files between environments?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 113. What is state drift?

**state drift** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 114. How does Terraform detect drift?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Backends, Workspaces and Environment Strategy

### 115. What is a backend in Terraform?

**a backend in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 116. What is the difference between local and remote backends?

**the difference between local and remote backends** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 117. What is a partial backend configuration?

**a partial backend configuration** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 118. Why should backend secrets not be hardcoded?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 119. What is a Terraform workspace?

CLI workspaces allow one Terraform configuration to have **separate state instances**.

```bash
terraform workspace list
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
```

They can be useful when environments are structurally identical, but large organizations often prefer separate root modules/directories and backend keys for stronger isolation between dev and production.

[⬆ Back to Question Index](#question-index)

---

### 120. What does the default workspace mean?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 121. How do you create a workspace?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 122. How do you list workspaces?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 123. How do you select a workspace?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 124. How do you delete a workspace?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 125. How does each workspace maintain separate state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 126. When are CLI workspaces useful?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 127. When should you avoid using workspaces for environment isolation?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 128. Workspaces vs separate directories: which is better?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 129. How do you manage dev, QA, staging and production environments?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 130. How do you use backend keys to separate environment state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 131. How do you structure a repository for multiple environments?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 132. How do you avoid accidental production deployment from the wrong workspace?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Meta-Arguments and Lifecycle

### 133. What is count in Terraform?

**count in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 134. What is for_each in Terraform?

**for_each in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 135. What is the difference between count and for_each?

**the difference between count and for_each** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 136. When is for_each safer than count?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 137. What is depends_on?

**depends_on** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 138. When should you explicitly use depends_on?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 139. What is the provider meta-argument?

**the provider meta-argument** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 140. What is lifecycle in Terraform?

**lifecycle in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 141. What does create_before_destroy do?

It changes replacement ordering for a resource:

```hcl
lifecycle {
  create_before_destroy = true
}
```

When Terraform must replace the object, it attempts to create the replacement first and destroy the old object afterward. This can reduce downtime, but it only works when the platform permits two objects to coexist (for example naming/uniqueness constraints may prevent it).

[⬆ Back to Question Index](#question-index)

---

### 142. What does prevent_destroy do?

It blocks a plan from destroying the resource while the lifecycle rule remains in configuration:

```hcl
lifecycle {
  prevent_destroy = true
}
```

Useful for high-value resources such as databases, but it is not a substitute for RBAC, backups, policy and review controls.

[⬆ Back to Question Index](#question-index)

---

### 143. What does ignore_changes do?

`ignore_changes` tells Terraform not to propose updates for selected resource attributes after creation.

```hcl
lifecycle {
  ignore_changes = [tags]
}
```

Use it when another system legitimately owns an attribute. Overuse is dangerous because it can hide meaningful configuration drift.

[⬆ Back to Question Index](#question-index)

---

### 144. What does replace_triggered_by do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 145. What is precondition in Terraform?

**precondition in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 146. What is postcondition in Terraform?

**postcondition in Terraform** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 147. What is the lifecycle impact of renaming a resource block?

**the lifecycle impact of renaming a resource block** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 148. How do you prevent accidental deletion of production resources?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 149. How do you handle a resource attribute changed manually but intentionally?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 150. What are the risks of using ignore_changes?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

## Modules and Reusability

### 151. What is a Terraform module?

**a Terraform module** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 152. What is the root module?

**the root module** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 153. What is a child module?

**a child module** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 154. Why should modules be used?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 155. How do you call a module?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 156. How do you pass variables to a module?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 157. How do you consume module outputs?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 158. How do you reference a local module?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 159. How do you use a module from Git?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 160. How do you use a module from Terraform Registry?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 161. How do you pin a module version?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 162. How should a reusable module be structured?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 163. What should go in variables.tf?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 164. What should go in outputs.tf?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 165. What should go in versions.tf?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 166. What are module composition best practices?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 167. How do you design modules for Azure VNets and subnets?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 168. How do you design a reusable VM module?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 169. How do you design a reusable AKS module?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 170. How do you avoid creating overly complex modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 171. How do you version internal Terraform modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 172. How do you test Terraform modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Import, Existing Infrastructure and Refactoring

### 173. What is terraform import?

`terraform import` associates an existing real infrastructure object with a Terraform resource address in state.

Typical flow:

```hcl
resource "azurerm_resource_group" "existing" {
  name     = "rg-existing"
  location = "East US"
}
```

```bash
terraform init
terraform import azurerm_resource_group.existing   /subscriptions/<sub>/resourceGroups/rg-existing

terraform plan
```

After import, make the Terraform configuration accurately match the real object so the plan does not propose unintended changes.

[⬆ Back to Question Index](#question-index)

---

### 174. When do you use terraform import?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 175. Does terraform import automatically generate complete configuration?

The answer depends on the exact Terraform mechanism. Distinguish **what Terraform records in state** from **what it actually changes in infrastructure**, and avoid assuming that state changes automatically provide infrastructure recovery.

[⬆ Back to Question Index](#question-index)

---

### 176. What are import blocks?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 177. How do you import an existing Azure resource into Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 178. How do you import an Azure resource group?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 179. How do you import an Azure storage account?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 180. How do you validate an import using terraform plan?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 181. What happens if imported configuration does not match the real resource?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 182. How do you bring manually created infrastructure under Terraform management?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 183. What is a moved block?

**a moved block** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 184. When should you use a moved block?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 185. How do you rename a Terraform resource without recreating it?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 186. How do you move a resource between modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 187. What happens if you simply rename a resource block without moving state?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 188. What is removed block functionality used for?

**removed block functionality used for** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 189. How do you stop managing a resource without destroying it?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 190. What is terraform state rm and when is it used?

**terraform state rm and when is it used** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 191. What is terraform state mv and when is it used?

**terraform state mv and when is it used** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 192. How do you recover when .tf configuration files are deleted but state still exists?

Configuration should normally be restored from **Git/source control**. If that is impossible, inspect state and real infrastructure, reconstruct the `.tf` configuration, and repeatedly run `terraform plan` until it accurately represents the managed resources.

State is not a reliable substitute for keeping configuration in version control.

[⬆ Back to Question Index](#question-index)

---

## Dependency Management and Provisioners

### 193. How does Terraform determine resource creation order?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 194. What are implicit dependencies?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 195. What are explicit dependencies?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 196. What does depends_on do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 197. What is a provisioner?

**a provisioner** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 198. What is local-exec?

**local-exec** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 199. What is remote-exec?

**remote-exec** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 200. Why are provisioners considered a last resort?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 201. What is a null_resource?

**a null_resource** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 202. What is terraform_data?

**terraform_data** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 203. What are triggers in null_resource or terraform_data workflows?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 204. When would you use local-exec safely?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 205. What alternatives should be preferred over remote-exec?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 206. How do you pass cloud-init or custom data to a VM instead of using provisioners?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Azure Resource Scenarios

### 207. How do you create an Azure resource group using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 208. How do you create an Azure VNet and subnets using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 209. How do you create an NSG and associate it with a subnet?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 210. How do you create a public IP and network interface?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 211. How do you create an Azure VM using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 212. How do you create multiple VMs using for_each?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 213. How do you create an Azure Load Balancer using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 214. How do you create an Application Gateway using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 215. How do you create an Azure Storage Account using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 216. How do you create an Azure Key Vault using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 217. How do you create an Azure SQL Database using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 218. How do you create an Azure App Service using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 219. How do you create an Azure Container Registry using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 220. How do you create AKS using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 221. How do you create private endpoints using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 222. How do you configure VNet peering using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 223. How do you create route tables and associate routes?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 224. How do you use availability zones in Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 225. How do you create a hub-and-spoke network using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 226. How do you design a three-tier Azure application using Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Terraform CLI and Troubleshooting

### 227. What are the most important Terraform CLI commands?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 228. How do you inspect Terraform version and providers?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 229. How do you format all Terraform files recursively?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 230. How do you validate a configuration?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 231. How do you save a Terraform plan to a file?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 232. How do you apply a saved plan?

Create and apply the exact reviewed plan:

```bash
terraform plan -out=tfplan
terraform show tfplan
terraform apply tfplan
```

This is valuable in CI/CD because the apply stage can execute the previously reviewed plan rather than recalculating a different plan immediately before deployment.

[⬆ Back to Question Index](#question-index)

---

### 233. Why is applying a saved plan useful in CI/CD?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 234. What is terraform console?

**terraform console** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 235. How do you use terraform console for troubleshooting expressions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 236. How do you enable Terraform debug logging?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 237. What does TF_LOG do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 238. What does TF_LOG_PATH do?

Explain what the command/argument changes in Terraform's **configuration → plan → state → real infrastructure** workflow. Mention whether it changes configuration, state, infrastructure, or only Terraform's execution behavior, and call out production risks.

[⬆ Back to Question Index](#question-index)

---

### 239. How do you troubleshoot terraform init failures?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 240. How do you troubleshoot dependency lock file issues?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 241. How do you troubleshoot provider version conflicts?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 242. How do you troubleshoot cyclic dependency errors?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 243. How do you troubleshoot 'resource already exists' errors?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 244. How do you troubleshoot a plan that wants to recreate a resource unexpectedly?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 245. How do you troubleshoot state drift?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 246. How do you troubleshoot a failed terraform apply?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 247. What should you do after a partial Terraform apply failure?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 248. How do you troubleshoot remote backend access issues?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 249. How do you troubleshoot Azure RBAC failures from Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 250. How do you troubleshoot a stale state lock?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 251. How do you investigate why Terraform wants to delete a resource?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## CI/CD and Azure DevOps

### 252. How do you integrate Terraform with Azure DevOps Pipelines?

A strong production pipeline separates validation, planning and application:

```yaml
stages:
- stage: Validate
  jobs:
  - job: TerraformValidate
    steps:
    - script: |
        terraform fmt -check -recursive
        terraform init -backend=false
        terraform validate

- stage: Plan
  jobs:
  - job: TerraformPlan
    steps:
    - script: |
        terraform init
        terraform plan -out=tfplan

- stage: Apply
  jobs:
  - deployment: TerraformApply
    environment: production
    strategy:
      runOnce:
        deploy:
          steps:
          - script: terraform apply tfplan
```

Use workload identity federation or a securely managed service connection, remote state, protected environments/approvals, saved plans, policy/security scanning and restricted production permissions.

[⬆ Back to Question Index](#question-index)

---

### 253. What stages should a Terraform CI/CD pipeline contain?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 254. How do you run terraform fmt in CI?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 255. How do you run terraform validate in CI?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 256. How do you run terraform plan in a pull request pipeline?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 257. How do you publish and review a Terraform plan artifact?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 258. How do you apply only an approved saved plan?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 259. How do you add manual approval before production apply?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 260. How do you authenticate Terraform from Azure DevOps securely?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 261. How do you use an Azure service connection with Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 262. How do you use workload identity federation for Terraform pipelines?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 263. Where should Terraform secrets be stored?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 264. How do you integrate Azure Key Vault with Terraform pipelines?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 265. How do you prevent secrets from leaking into pipeline logs?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 266. How do you use environment-specific tfvars in pipelines?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 267. How do you prevent concurrent Terraform applies in CI/CD?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 268. How do you implement Terraform state locking in pipelines?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 269. How do you handle plan/apply separation across pipeline stages?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 270. How do you design rollback for Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 271. Can Terraform simply roll back to the previous infrastructure state?

Not automatically. Terraform is not a transactional deployment engine that guarantees rollback after a partial failure. State records what Terraform knows about managed objects; reverting a state file alone does not safely revert real infrastructure.

Rollback/recovery should be designed explicitly: revert configuration, run a new plan, restore data/backups where needed, or use application-level deployment patterns.

[⬆ Back to Question Index](#question-index)

---

### 272. How do you use Git branches and pull requests with Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 273. How do you implement policy checks before apply?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 274. How do you scan Terraform for security issues in CI/CD?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 275. Which tools can scan Terraform or IaC code?

Prefer the option that supports least privilege, short-lived credentials, auditable CI/CD execution and no hardcoded secrets. In Azure pipelines, workload identity federation/managed identity patterns are preferable when available.

[⬆ Back to Question Index](#question-index)

---

### 276. How do you combine Terraform and Ansible in a deployment pipeline?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Security and Governance

### 277. How do you secure Terraform state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 278. How do you handle secrets in Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 279. Why should secrets not be hardcoded in .tf or tfvars files?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 280. How do you use environment variables for provider authentication?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 281. How do you use Azure Key Vault with Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 282. How do you implement least privilege for Terraform service principals?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 283. How do you restrict who can apply Terraform to production?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 284. How do you protect state storage with RBAC and networking?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 285. How do you prevent public access to the Terraform state storage account?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 286. How do you encrypt Terraform state at rest?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 287. How do you protect sensitive Terraform outputs?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 288. What is policy as code?

**policy as code** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 289. What is Sentinel?

**Sentinel** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 290. What is Open Policy Agent (OPA)?

**Open Policy Agent (OPA)** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 291. What is Conftest?

**Conftest** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 292. How do you enforce mandatory tags using policy checks?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 293. How do you enforce approved Azure regions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 294. How do you prevent creation of public IP addresses?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 295. How do you enforce naming standards in Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 296. How do you audit Terraform changes?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Real-World Scenario-Based Questions

### 297. You have existing Azure resources created manually. How do you bring them under Terraform management?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 298. An Azure App Service is managed by Terraform, but someone manually adds tags in the portal. What happens on the next plan/apply?

Terraform refreshes/read-checks the real object during planning and compares it with configuration. If the manually added tag is **not declared in configuration** and the provider treats that attribute as managed, the plan normally proposes removing it to restore the declared configuration.

Options are to:
1. Add the tag to Terraform configuration, or
2. Deliberately use `lifecycle { ignore_changes = [tags] }` if another system owns tags.

Do not use `ignore_changes` merely to hide uncontrolled drift.

[⬆ Back to Question Index](#question-index)

---

### 299. How do you keep an intentional manual tag change without Terraform removing it?

The preferred approach is to move the change into code:

```hcl
tags = {
  CostCenter = "Development"
}
```

If tags are intentionally managed by another external platform, you can define:

```hcl
lifecycle {
  ignore_changes = [tags]
}
```

Use that carefully because Terraform will then stop reconciling changes to the ignored attribute.

[⬆ Back to Question Index](#question-index)

---

### 300. Your Terraform state was moved to Azure Blob Storage. How do you migrate safely?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 301. Two developers run terraform apply at the same time. What happens?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 302. Your Terraform configuration files are deleted but the remote state still exists. How do you recover?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 303. Your remote Terraform state file is accidentally deleted. How do you recover?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 304. Terraform wants to destroy and recreate a production resource. How do you investigate?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 305. How do you change a resource name without destroying the actual Azure resource?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 306. How do you move resources into a new module without recreation?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 307. You need to deploy the same infrastructure to dev, QA and prod. How do you structure it?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 308. When would you use workspaces versus separate environment folders?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 309. You need zero/minimal downtime during replacement. Which lifecycle option could help?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 310. How do you stop someone from accidentally destroying a production database?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 311. A value is changed outside Terraform. How do you detect and reconcile the drift?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 312. Terraform plan shows unexpected changes after a provider upgrade. What do you do?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 313. terraform apply fails halfway through. Is everything automatically rolled back?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 314. A resource was created successfully in Azure but Terraform did not record it correctly. What do you do?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 315. How do you remove a resource from Terraform management without deleting it?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 316. How do you recreate a resource intentionally?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 317. What replaced the old terraform taint workflow?

For an intentional replacement, prefer the `-replace` planning/apply option:

```bash
terraform plan -replace="azurerm_linux_virtual_machine.app"
terraform apply -replace="azurerm_linux_virtual_machine.app"
```

This makes the replacement request explicit in the plan instead of mutating state beforehand.

[⬆ Back to Question Index](#question-index)

---

### 318. How do you force replacement using terraform apply -replace?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 319. How do you safely rotate an Azure service principal credential used by Terraform?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 320. How do you deploy infrastructure across multiple Azure subscriptions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 321. How do you deploy resources across multiple Azure regions?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 322. How do you model hub-and-spoke networking with reusable modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 323. How do you handle dependencies between network, compute and database modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 324. How do you share outputs between independent Terraform stacks?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 325. How do you consume remote state outputs?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 326. What are the risks of terraform_remote_state?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 327. How do you reduce blast radius in a large Terraform estate?

Split infrastructure into logical state boundaries based on ownership, lifecycle and failure domain—for example network, platform, data and application stacks—rather than one enormous state file.

Combine this with reusable modules, narrow pipeline permissions, saved plans, approvals, policy checks, remote state locking and controlled cross-stack outputs.

[⬆ Back to Question Index](#question-index)

---

### 328. How do you organize state for hundreds of resources?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 329. How do you import hundreds of existing Azure resources?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 330. How do you refactor a monolithic Terraform configuration into modules safely?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 331. How do you handle a Terraform deployment when a resource must never be recreated?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Expert Architecture and Best Practices

### 332. Explain Terraform architecture end-to-end.

Explain the flow from HCL configuration through initialization/provider loading, dependency graph construction, state refresh/read, plan generation, apply execution, state update and final verification. Include failure handling and remote-state considerations.

[⬆ Back to Question Index](#question-index)

---

### 333. How does Terraform build and use its dependency graph?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 334. How does Terraform compare configuration, state and real infrastructure?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 335. What happens internally during terraform plan?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 336. What happens internally during terraform apply?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 337. What is provider schema and why does it matter?

**provider schema and why does it matter** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 338. What is the role of the dependency lock file?

**the role of the dependency lock file** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 339. How do you design Terraform for a large enterprise?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 340. How do you define state boundaries?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 341. What factors determine whether resources should share one state?

A strong Terraform interview answer should cover the **desired infrastructure, HCL/configuration, state implications, provider behavior, plan/apply process, security, drift, failure handling and verification**.

[⬆ Back to Question Index](#question-index)

---

### 342. How do you reduce Terraform blast radius?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 343. How do you handle cross-stack dependencies?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 344. What is the safest way to expose outputs between stacks?

**the safest way to expose outputs between stacks** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 345. How do you version and publish internal modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 346. How do you enforce module usage instead of direct resource creation?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 347. How do you standardize provider versions across teams?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 348. How do you handle provider upgrades in an enterprise?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 349. How do you test Terraform code before production?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 350. What is Terratest?

**Terratest** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 351. What is terraform test?

**terraform test** is a Terraform concept used to make infrastructure declarative, reproducible and manageable as code. In an interview, explain **what it is, how Terraform uses it, and its production impact**. Relate it to configuration, state, provider behavior and the plan/apply workflow.

[⬆ Back to Question Index](#question-index)

---

### 352. How do you use static analysis and policy-as-code together?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 353. How do you make Terraform runs reproducible?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 354. How do you design disaster recovery for Terraform state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 355. How do you back up Azure Blob Terraform state?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 356. How do you implement state retention/versioning?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 357. How do you perform safe state surgery?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 358. Why should terraform state push be used very carefully?

Because Terraform depends on predictable configuration, provider behavior and trustworthy state. The recommended practice minimizes drift, protects state, keeps execution reproducible and reduces accidental infrastructure changes.

[⬆ Back to Question Index](#question-index)

---

### 359. How do you troubleshoot a dependency cycle between modules?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 360. How do you manage resources with eventual consistency issues?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 361. How do you avoid using -target as a normal deployment strategy?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 362. When is -target appropriate?

Choose based on ownership, lifecycle, blast radius and collaboration requirements. The production-safe choice should keep changes declarative, reviewable and reproducible while minimizing direct state manipulation and manual cloud changes.

[⬆ Back to Question Index](#question-index)

---

### 363. How do you use moved blocks during large refactoring?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 364. How do you use import blocks in repeatable import workflows?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 365. How do you prevent accidental drift from portal changes?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

### 366. How do you combine Terraform, Azure Policy, CI/CD and GitOps-style controls for enterprise governance?

Use a controlled Terraform workflow: keep infrastructure in Git, use reusable modules, remote state with locking, least-privilege authentication, explicit version constraints, `fmt`/`validate`, reviewed `plan`, and an approved `apply`. Verify the result with a new plan and cloud-side health/operational checks.

[⬆ Back to Question Index](#question-index)

---

## Terraform Practical Command Cheat Sheet

```bash
terraform version
terraform fmt -recursive
terraform fmt -check -recursive
terraform init
terraform init -upgrade
terraform validate
terraform plan
terraform plan -out=tfplan
terraform show tfplan
terraform apply tfplan
terraform plan -refresh-only
terraform apply -refresh-only
terraform state list
terraform state show <address>
terraform state mv <source> <destination>
terraform state rm <address>
terraform import <address> <resource-id>
terraform workspace list
terraform workspace new dev
terraform workspace select dev
terraform apply -replace='<resource-address>'
terraform destroy
```

## Azure Remote Backend Example

```hcl
terraform {
  required_version = ">= 1.6.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstateprod001"
    container_name       = "tfstate"
    key                  = "prod/platform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
```

## Production Interview Answer Framework

For scenario questions, answer in this order: **requirement → state boundary/backend → provider/authentication → module/configuration → dependencies/lifecycle → plan → security/policy → apply/approval → drift handling → failure recovery → verification**.
