### Release Issues:

Currently doing a quark release is quite complex (although it is
scripted) because it requires pushing the runtime packages for each
backend up to the corresponding package repository for that
language. This means adding a backend involves scripting interactions
for that package manager.

We have the opportunity to radically simplify this by utilizing the
[packaging model](packaging.md) for the runtime itself.
