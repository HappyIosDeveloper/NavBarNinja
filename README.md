# NavBarNinja
Swift extension for customizing navigation bar(change color, add button to left or rigth, hide or show navigation bar, set background image and etc).


# Usage:
To use this extension, simply copy NavBarNinja.swift to your project, then write inside any function "NavBarNinja" to see what you can do with your navigation bar.

for example:

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftButton = UIButton()
        leftButton.addTarget(self, action: #selector(self.action), for: .touchUpInside)
        navBarNinja(leftButton: leftButton, icon: UIImage())
        navBarNinja(titleColor: UIColor.black)
        navBarNinja(hideNavigationBar: false)
        navbarNinja(backgroundImage: UIImage())
        navBarNinja(statusbarcolor: UIColor())
        navBarNinja(romveLeftNavbarButton: true)
        navBarNinja(showNavBarShadow: true)
        navBarNinja(statusbarcolor: UIColor(), whiteText: true)
        navBarNinja(color: UIColor.groupTableViewBackground)
        navBarNinja(titleColor: UIColor())
    }
