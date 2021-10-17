# Contributing to wso2-for-m1

Docker and Docker Compose resources for WSO2 platform are open source and we encourage contributions from our community.

## How you can Contribute

### Posting Issues

I encourage you to report any problems in the Docker and Docker Compose resources or their documentation by creating GitHub issues in the respective repositories.
The issues page on GitHub is for tracking bugs and feature requests. When posing a new issue, follow the guidelines below.

* Check whether the issue has already been reported.
* Create a separate issue for each bug you are reporting or feature you are requesting.

### Code Contributions

If you like to contribute with a bug fix or a new feature, start by posting an issue and discussing the best way to implement it.

As in most projects, development is carried out on the `master` branch. The pull requests are merged to the `master` branch after a final review and a round of testing. So the `master` branch will contains a usable latest version of the project.

Please follow these guidelines when contributing to the code:

1. Fork the current repository.
2. Create a topic branch from the `master` branch.
3. Make commits in logical units.
4. Before you send out the pull request, sync your forked repository with a remote repository. This makes your pull request simple and clear.

```bash
git clone https://github.com/<user>/wso2-for-m1.git
git remote add upstream https://github.com/lahirulls/wso2-for-m1.git
git fetch upstream
git checkout -b <topic-branch> upstream/master

# add some work

git push origin <topic-branch>

# submit pull request
```

**Thanks for contributing!**
