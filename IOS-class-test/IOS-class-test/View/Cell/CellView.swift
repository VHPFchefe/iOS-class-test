import UIKit

class CellView : UITableViewCell {
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var circleLanguage: UIImageView!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var forksCountLabel: UILabel!
    
    @IBOutlet weak var stargazersCountLabel: UILabel!
    
    func configuraCell(repository : Repository){
        nameLabel.text = repository.name
        circleLanguage.tintColor = getColor(language: repository.language ?? "")
        languageLabel.text = repository.language
        descriptionLabel.text = repository.description
        forksCountLabel.text = "\(repository.forksCount ?? 0)"
        stargazersCountLabel.text = "\(repository.stargazersCount ?? 0)"
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        view.layer.cornerRadius = 10
    }
    

    
}
