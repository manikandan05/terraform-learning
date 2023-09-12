# Terraform Infrastructure as Code (IaC)

## What is terraform?
Terraform is an infrastructure-as-code software tool (primarily used by DevOps team) created by HashiCorp. Users define and provide data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language. It lets you build, change, and version cloud and on-prem resources safely and efficiently.

HashiCrop released their initial release 28 July 2014. It is written in Go lang.

## terraform - IaC uses
**Improve speed:** Automation is faster than manually navigating an interface when you need to deploy and/or connect resources.

**Improve reliability:** If your infrastructure is large, it becomes easy to misconfigure a resource or provision services in the wrong order. With IaC, the resources are always provisioned and configured exactly as declared.

**Prevent configuration drift:** Configuration drift occurs when the configuration that provisioned your environment no longer matches the actual environment. (See ‘Immutable infrastructure’ below.)

**Support experimentation, testing, and optimization:** Because Infrastructure as Code makes provisioning new infrastructure so much faster and easier, you can make and test experimental changes without investing lots of time and resources; and if you like the results, you can quickly scale up the new infrastructure for production.

**Team Collaboratio:** Various team members can collaborate on IaC software in the same way they would with regular application code through tools like Github. Code can be easily linked to issue tracking systems for future use and reference.

**Error Reduction:** IaC minimizes the probability of errors or deviations when provisioning your infrastructure. The code completely standardizes your setup, allowing applications to run smoothly and error-free without the constant need for admin oversight.

**Disaster Recovery:** With IaC you can actually recover from disasters more rapidly. Because manually constructed infrastructure needs to be manually rebuilt. But with IaC, you can usually just re-run scripts and have the exact same software provisioned again.

**Enhanced Security:** IaC relies on automation that removes many security risks associated with human error. When an IaC-based solution is installed correctly, the overall security of your computing architecture and associated data improves massively.

## Why terraform?
There are a few key reasons developers choose to use Terraform over other Infrastructure as Code tools:

**Open source:** Terraform is backed by large communities of contributors who build plugins to the platform. Regardless of which cloud provider you use, it’s easy to find plugins, extensions, and professional support. This also means Terraform evolves quickly, with new benefits and improvements added consistently.

**Platform agnostic:** Meaning you can use it with any cloud services provider. Most other IaC tools are designed to work with single cloud provider.

**Immutable infrastructure:** Most Infrastructure as Code tools create mutable infrastructure, meaning the infrastructure can change to accommodate changes such as a middleware upgrade or new storage server. The danger with mutable infrastructure is configuration drift—as the changes pile up, the actual provisioning of different servers or other infrastructure elements ‘drifts’ further from the original configuration, making bugs or performance issues difficult to diagnose and correct. Terraform provisions immutable infrastructure, which means that with each change to the environment, the current configuration is replaced with a new one that accounts for the change, and the infrastructure is reprovisioned. Even better, previous configurations can be retained as versions to enable rollbacks if necessary or desired.

## terraform main features
**Infrastructure as Code:** Infrastructure is described using a high-level configuration syntax. This allows a blueprint of your datacenter to be versioned and treated as you would any other code. Additionally, infrastructure can be shared and re-used.

**Execution Plans:** Terraform has a "planning" step where it generates an execution plan. The execution plan shows what Terraform will do when you call apply. This lets you avoid any surprises when Terraform manipulates infrastructure.

**Resource Graph:** Terraform builds a graph of all your resources, and parallelizes the creation and modification of any non-dependent resources. Because of this, Terraform builds infrastructure as efficiently as possible, and operators get insight into dependencies in their infrastructure.

**Change Automation:** Complex changesets can be applied to your infrastructure with minimal human interaction. With the previously mentioned execution plan and resource graph, you know exactly what Terraform will change and in what order, avoiding many possible human errors.

## Terraform main advantages
- Time saving (for creating same infrastructure resources in dev, test, staging, prod, dr will reduce)
- Migration is very easy
- Reproduction of infrastructure 
- Tracking & version control


The IaC available in each clouds and its list available below.

|Cloud Provider | IaC|
|----------|--------|
|Azure only|**ARM Templates, Azure Blueprints**|
|AWS only|**CloudFormation**|
|GCP only|**Cloud Deployment Manager**|
|IBM only|**Schematics**|
|All of the above (& many others)|**Terraform**|

## Terraform vs Ansible
Terraform and Ansible are both Infrastructure as Code tools, but there are a couple significant differences between the two:

- While Terraform is purely a declarative tool (see above), Ansible combines both declarative and procedural configuration. In procedural configuration, you specify the steps, or the precise manner, in which you want to provision infrastructure to the desired state. Procedural configuration is more work but it provides more control.

- Terraform is open source; Ansible is developed and sold by Red Hat.

## Dive into Terraform
Now lets learn about terraform major terms and its purpose.

### Modules
Terraform modules are small, reusable Terraform configurations for multiple infrastructure resources that are used together. Terraform modules are useful because they allow complex resources to be automated with re-usable, configurable constructs. Writing even a very simple Terraform file results in a module. 

### Providers
Terraform providers are plugins that implement resource types. Providers contain all the code needed to authenticate and connect to a service—typically from a public cloud provider—on behalf of the user. You can find providers for the cloud platforms and services you use, add them to your configuration, and then use their resources to provision infrastructure

## Conclusion
- Terraform is an IaC tool for managing infrastructure resources in a consistent and automated way.
- It uses declarative language to define the desired state of infrastructure resources as code.
- Terraform modules allow for the design and configuration of reusable infrastructure resources as a single entity.
- Plugins let Terraform communicate with other systems and cloud providers, enabling new resource types and functionalities.
- Terraform automates infrastructure management, version control, and scaling and enhances the dependability of cloud-based systems.
- Providers, resources, modules, input, and output variables are essential terms associated with Terraform.

Terraform is a very powerful tool that helps us to adopt the Infrastructure-as-Code practice in our projects. This power, however, comes with its huge challenges for DevOps team when 
deploying, managing, and orchestrating multi-cloud environments. But coordinating between different service providers and technologies like AWS and Azure Virtual Networks can be much easier and less time-consuming with Terraform infrastructure-as-code. 
