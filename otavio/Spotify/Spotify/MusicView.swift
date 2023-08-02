//
//  MusicView
//  Spotify
//
//  Created by Student21 on 01/08/23.
//

import Foundation
import SwiftUI

struct MusicView: View{
    let song : Song

    var body: some View{
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .frame(width: 1000)
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            VStack{
                AsyncImage(url: URL(string: song.capa)!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "photo.fill")
                }.frame(width: 200, height: 200)
                Text(song.name)
                    .foregroundColor(.white)
                    .font(.title)
                Text(song.artist)
                    .foregroundColor(.white)
                    .font(.caption)
                Text("\n\n\n\n\n")
                HStack{
                    Image(systemName: "shuffle").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding()
                        Image(systemName: "backward.end.fill").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding()
                        Image(systemName: "play.fill").resizable().frame(width: 40, height: 40)
                        .imageScale(.large).padding()
                        Image(systemName: "forward.end.fill").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding()
                        Image(systemName: "repeat").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding()
                }.foregroundColor(.white)
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        //music(song: Song)
        MusicView(song: Song(id:1, name: "AAAA", artist: "AAAAAAAAAAAAAA", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/03/c96c7a2-thank-u-next-ariana-album.jpg"))
        
    }
}
