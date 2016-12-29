# FluidStyleAnchor

## Description
easy make view`s constraint Fluid style.


## Example
<pre><code>
// before use fluid style
tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
tableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

// after use fluid style
tableView
    .fs_leftAnchor(equalTo: view.leftAnchor)
    .fs_rightAnchor(equalTo: view.rightAnchor)
    .fs_topAnchor(equalTo: topLayoutGuide.bottomAnchor)
    .fs_bottomAnchor(equalTo: view.bottomAnchor)
    .fs_endSetup()
</code></pre>
