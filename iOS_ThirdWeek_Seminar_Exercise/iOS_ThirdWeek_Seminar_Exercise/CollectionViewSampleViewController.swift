//
//  CollectionViewSampleViewController.swift
//  iOS_ThirdWeek_Seminar_Exercise
//
//  Created by 최인정 on 2020/05/09.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class CollectionViewSampleViewController: UIViewController {

    @IBOutlet weak var musicCollectionView: UICollectionView!
    
    private var musicList: [Music] = []
    
    private func setMusicList() {
        let music1 = Music(coverName: "album_iu", title: "삐삐", singer: "아이유")
        let music2 = Music(coverName: "album_vibe", title: "가을 타나봐", singer: "바이브")
        let music3 = Music(coverName: "album_yangdail", title: "고백", singer: "양다일")
        let music4 = Music(coverName: "album_im", title: "하루도 그대를 사랑하지 않은 적이 없었다", singer: "임창정")
        let music5 = Music(coverName: "album_smtm7", title: "Save (Feat. 팔로알토)", singer: "루피(Loopy)")
        let music6 = Music(coverName: "album_ziont", title: "멋지게 인사하는 법 (Feat. 슬기)", singer: "Zion.T")
        let music7 = Music(coverName: "album_bts", title: "IDOL", singer: "방탄소년단")
        let music8 = Music(coverName: "album_loco", title: "시간이 들겠지 (Feat. Colde)", singer: "로꼬")
        let music9 = Music(coverName: "album_paul", title: "모든 날, 모든 순간", singer: "폴킴")
        let music10 = Music(coverName: "album_shaun", title: "Way Back Home", singer: "숀(SHAUN)")
       
        musicList = [music1, music2, music3, music4, music5, music6, music7, music8, music9, music10]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicList()
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self
        
        // Do any additional setup after loading the view.
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

extension CollectionViewSampleViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return musicList.count }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let musicCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCell.identifier, for: indexPath) as? MusicCell else { return UICollectionViewCell()}
    
        musicCell.set(musicList[indexPath.row])
        return musicCell
    }
}

extension CollectionViewSampleViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
    indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width-40) / 2, height: collectionView.frame.height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
        
    }
}
