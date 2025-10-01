//
//  HomeView.swift
//  Opdracht 2
//
//  Created by Wout Crevits on 30/09/2025.
//

struct InfoHomeView {
    let title : String
    let infoText : String
}

let informationHomeView = InfoHomeView (
    title: "Barcelona",
    infoText: "BBarcelona (/ˌbɑːrsəˈloʊnə/ ⓘ BAR-sə-LOH-nə; Catalan: [bəɾsəˈlonə] ⓘ; Spanish: [baɾθeˈlona] ⓘ) is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second-most populous municipality of Spain. With a population of 1.7 million within city limits,[5] its urban area extends to numerous neighbouring municipalities within the province of Barcelona and is home to around 5.7 million people,[3] making it the fifth most populous urban area of the European Union after Paris, the Ruhr area, Madrid and Milan.[3] It is one of the largest metropolises on the Mediterranean Sea, located on the coast between the mouths of the rivers Llobregat and Besòs, bounded to the west by the Serra de Collserola mountain range. According to tradition, Barcelona was founded by either the Phoenicians or the Carthaginians, who had trading posts along the Catalonian coast.[8] In the Middle Ages, Barcelona became the capital of the County of Barcelona. After joining with the Kingdom of Aragon to form the composite monarchy of the Crown of Aragon, Barcelona, which continued to be the capital of the Principality of Catalonia, became the most important city in the Crown of Aragon and its main economic and administrative centre, only to be overtaken by Valencia, wrested from Moorish control by the Catalans, shortly before the dynastic union between the Crown of Castile and the Crown of Aragon in 1516. Barcelona became the centre of Catalan separatism, briefly becoming part of France during the 17th century Reapers' War and again in 1812 until 1814 under Napoleon. Experiencing industrialization and several workers movements during the 19th and early 20th century, it became the capital of autonomous Catalonia in 1931 and it was the epicenter of the revolution experienced by Catalonia during the Spanish Revolution of 1936, until its capture by the fascists in 1939. After the Spanish transition to democracy in the 1970s, Barcelona once again became the capital of an autonomous Catalonia. Barcelona has a rich cultural heritage and is today an important cultural centre and a major tourist destination. Particularly renowned are the architectural works of Antoni Gaudí and Lluís Domènech i Montaner, which have been designated UNESCO World Heritage Sites. The city is home to two of the most prestigious universities in Spain: the University of Barcelona and Pompeu Fabra University. The headquarters of the Union for the Mediterranean are located in Barcelona. The city is known for hosting the 1992 Summer Olympics as well as world-class conferences and expositions. In addition, many international sport tournaments have been played here."
)

import SwiftUI
struct HomeView: View {
    var body: some View {
        ScrollView {
            Image("Barcelona")
            VStack {
                Text(informationHomeView.title).foregroundStyle(.tint)
                Text(informationHomeView.infoText)
            }
            
        }
    }
}

#Preview {
    HomeView()
}
