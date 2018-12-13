import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    private let lHeader: UILabel = {
        let l = Label.Header().multilined()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let lTitle: UILabel = {
        let l = Label.Title().multilined()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let lSubtitle: UILabel = {
        let l = Label.Subtitle().multilined()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let lMessage: UILabel = {
        let l = Label.Caption().multilined()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let lSpecial: UILabel = {
        let l = Label().multilined()
        appStyle.label.forgetting.apply(to: l)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    private let bInline1: UIButton = {
        let b = Button.Inline()
        b.setTitle("Inline button 1", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let bInline2: UIButton = {
        let b = Button.Inline()
        b.setTitle("Inline button 2", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let tfSimple: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    private let bPush: UIButton = {
        let b = Button.Main()
        b.setTitle("PUSH", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private lazy var svLabels: UIStackView = { [unowned self] in
        let svh = UIStackView(arrangedSubviews: [self.bInline1, self.bInline2])
        svh.axis = .horizontal
        svh.distribution = .fillEqually
        svh.spacing = UIConstant.Margin.small
        
        let sv = UIStackView(arrangedSubviews: [self.lHeader,
                                                self.lTitle,
                                                self.lSubtitle,
                                                self.lMessage,
                                                self.lSpecial,
                                                self.tfSimple,
                                                svh])
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.spacing = UIConstant.Margin.small
        sv.isLayoutMarginsRelativeArrangement = true
        sv.layoutMargins = UIEdgeInsets(top: UIConstant.Margin.medium,
                                        left: UIConstant.Margin.medium,
                                        bottom: UIConstant.Margin.medium,
                                        right: UIConstant.Margin.medium)
        sv.axis = .vertical
        return sv
        }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        appStyle.base.main.apply(to: self.view)
        view.addSubview(scrollView)
        scrollView.addSubview(svLabels)
        view.addSubview(bPush)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Example"
        lHeader.text = "Header"
        lTitle.text = "Title: lorem ipsum dolor sit amet"
        lSubtitle.text = "Subtitle: consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        lMessage.text = "Caption: ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        lSpecial.text = "Custom font: Excepteur sint occaecat cupidatat non proident"
        tfSimple.placeholder = "Placeholder"
        bPush.addTarget(self, action: #selector(push), for: .touchUpInside)
        
        layout()
    }
    
    private func layout() {
        scrollView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bPush.topAnchor).isActive = true
        
        svLabels.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        svLabels.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        svLabels.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        svLabels.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        svLabels.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        bPush.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        bPush.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bPush.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        NSLayoutConstraint.activate([
            bPush.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bPush.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
    }
    
    @objc private func push() {
        let newTheme = appStyle.theme.altered
        appStyle.set(theme: newTheme)
        
        let vc = ViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

