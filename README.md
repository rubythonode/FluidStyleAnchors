# FluidStyleAnchors
easy make view`s constraint Fluid style.

Example

tableView
    .fs_leftAnchor(equalTo: view.leftAnchor)
    .fs_rightAnchor(equalTo: view.rightAnchor)
    .fs_topAnchor(equalTo: topLayoutGuide.bottomAnchor)
    .fs_bottomAnchor(equalTo: view.bottomAnchor)
    .fs_endSetup()
