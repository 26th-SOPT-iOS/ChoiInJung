//
//  TableViewController.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/15.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var ProfileTableView: UITableView!
    
    private var profileInfos: [ProfileInfo] = []
    
    private func setprofileInfo(){
        let Profile1 = ProfileInfo(profileImg: .img1, name: "담", title: "서울숲")
        let Profile2 = ProfileInfo(profileImg: .img2, name: "정원수호치", title: "놀러가자")
        let Profile3 = ProfileInfo(profileImg: .img3, name: "전슨미", title: "누나영 primer")
        let Profile4 = ProfileInfo(profileImg: .img4, name: "미누캉", title: "-10")
        let Profile5 = ProfileInfo(profileImg: .img5, name: "박제이든", title: "여우머리티셔츠구함")
        let Profile6 = ProfileInfo(profileImg: .img6, name: "노주녁", title: "슬아님 재택좀")
        let Profile7 = ProfileInfo(profileImg: .img7, name: "캔서윤", title: "OO의 마무리")
        let Profile8 = ProfileInfo(profileImg: .img8, name: "윤시운", title: "득근")
        let Profile9 = ProfileInfo(profileImg: .img9, name: "김세니", title: "Cafe Latte")
        let Profile10 = ProfileInfo(profileImg: .img10, name: "저누성", title: "어 이  퇴근이  마렵다 - ! !")
        let Profile11 = ProfileInfo(profileImg: .img3, name: "곽두팔", title: "")
           
        profileInfos = [Profile1, Profile2, Profile3, Profile4, Profile5, Profile6, Profile7, Profile8, Profile9, Profile10, Profile11]
    }
    
    @IBOutlet weak var UserImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setprofileInfo()
        setUserInfo()
        ProfileTableView.dataSource = self
        ProfileTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
   
    func setUserInfo(){
        UserImage.image = UIImage(named : "1.png")
        UserImage.layer.cornerRadius = UserImage.frame.height / 2;
        UserImage.clipsToBounds = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileInfos.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let profileCell = tableView.dequeueReusableCell(withIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell else {return UITableViewCell()}
        
        profileCell.setProfileInfo(profileImage: profileInfos[indexPath.row].profileImg.getImageName(), name: profileInfos[indexPath.row].nameInfo, title: profileInfos[indexPath.row].subTitle)
        
        return profileCell
      
    }
}

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
