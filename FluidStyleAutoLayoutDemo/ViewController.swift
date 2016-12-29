//
//  ViewController.swift
//  FluidStyleAutoLayoutDemo
//
//  Created by smg on 2016. 12. 29..
//  Copyright © 2016년 ykikisoft. All rights reserved.
//

import UIKit

class ViewController
    : UIViewController,
    UITableViewDataSource
{
    // MARK: - Properties
    lazy var tableView: UITableView = {
        let tb = UITableView()
        tb.dataSource = self
        tb.register(Cell.self, forCellReuseIdentifier: Cell.cellIdentifier)
        return tb
    }()
    
    // MARK: - Set up views and constraints.
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    func setupViews()
    {
        view.addSubview(tableView)
    }
    
    func setupConstraints()
    {
        tableView
            .fs_leftAnchor(equalTo: view.leftAnchor)
            .fs_rightAnchor(equalTo: view.rightAnchor)
            .fs_topAnchor(equalTo: topLayoutGuide.bottomAnchor)
            .fs_bottomAnchor(equalTo: view.bottomAnchor)
            .fs_endSetup()
    }
    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.cellIdentifier, for: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1)"
        return cell
    }
}

class Cell: UITableViewCell
{
    class var cellIdentifier: String { return "\(Cell.self)" }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
}























