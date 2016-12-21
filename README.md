# ansible-serverspec
I like Ansible .. I like ServerSpec .. Do you ??
But how can I:
* Create tests for a role
* Copy role tests to nodes that use said role
* Be as DRY as possible

So here is my thought process:
* Create roles how I normally create them
```bash
./roles/<my-awh-sum-role>/
```
* Create tests for a role and put them in the role's "tests" directory
```bash
./roles/<my-awh-sum-role>/tests/*_spec.rb
```
* Create a role that setups a basic ServerSpec project
```bash
./roles/serverspec/*
```
* Create a role that will copy all tests from a referring role
```bash
./roles/test/*
```
* Any role that has tests, create a dependency on the test role (in meta) with related vars
```python
# this is in ./roles/<my-awh-sum-role>/meta/main.yml
---
dependencies:
  - role: test
    role_tests: <my-awh-sum-role>
```
