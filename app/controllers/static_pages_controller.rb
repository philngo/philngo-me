require 'project'
require 'topic'
class StaticPagesController < ApplicationController
  def about
  end

  def projects
    nlp = Project.new("Natural Language Processing",
      "projectthumbs/whatsthatword140.png",
      "http://whatsthatword.us",
      "With the lofty goal of creating a <i>reverse dictionary</i> which would predict
        the word of a definition (rather than the definition of a word), I worked
        with three excellent partners to gather data, build models and create
        visualizations of our results and processes. and visuals results and
        processes. Although I worked on nearly all aspects of the project, my main
        interest was in building a deep neural network which used a dense, distributed
        representation of words to model phrases.")
    avalanches = Project.new("Avalanche prediction",
      "projectthumbs/olympus140.png",
      "http://nbviewer.ipython.org/urls/raw2.github.com/philngo/avalanche-exploration/master/code/Avalanche%20data%20analysis.ipynb?create=1",
      "Focusing on Salt Lake's Wasatch Range, I am working to create better avalanche
        warnings and predictions in order to decrease worldwide avalanche fatalities,
        especially in areas of the world which do not have reliable forecasting.
        The data I use comes from the Utah Avalanche Center (UAC),
        the Utah Automated Geographic Reference Center (AGRC), and the North American
        Mesoscale Forecast System (NAM). ")
    jotit = Project.new("Jot it - an Idealab project",
      "projectthumbs/jotit140.png",
      "http://getjotit.com",
      "I prototyped a web app called Jot it!, which takes images of written (paper)
        notes and analyzes them for certain tags and keywords. When keywords are
        found, they trigger various functions such as sending emails or appending
        items to a todo list. I worked with a small team take it from concept to
        fully-functioning Rails app in a period of weeks.")
    cs50 = Project.new("Harmonizer - a CS50 project",
      "projectthumbs/harmonizer140.png",
      "https://github.com/philngo/harmonizer",
      "Harmonizer automatically extracts, transposes and harmonizes melodies
        from live piano recordings. The software we wrote enables fledgling
        composers to rapidly iterate through harmonization patterns in any key
        and exports to Finale Notepad and Sibelius for easy playback, printing
        and fine-tuning.")
    sphero_connection = Project.new("Sphero controller for Mathematica",
      "projectthumbs/sphero140.png",
      "http://blog.wolfram.com/2013/09/03/good-times-great-computations-wolfram-summer-internship-projects/",
      "While I worked at Wolfram Research, I also programmed a connection from
        <i>Mathematica</i> to a Sphero robot, which allowed remote control and
        data streaming. For instance, the Sphero robot's internal accelerometer
        could be used to manipulate graphics within a <i>Mathematica</i> notebook,
        or a function called from within <i>Mathematica</i> could send the Robot
        around the room in a burst of color and light. This work was featured in
        the Wolfram Blog in an article also featuring the wireless device connections.")
    wireless_connections = Project.new("Bluetooth and ANT+ connections to Mathematica",
      "projectthumbs/bluetooth140.png",
      "https://github.com/philngo/ble-mathematica",
      "During the summer of 2013, I was a software engineering intern at Wolfram
        Research, makers of <b><i>Mathematica</i></b> and <b>Wolfram|Alpha</b>.
        I created Mathematica AddOns which provide connections from <i>Mathematica</i>
        to various streaming wireless protocols, notably Bluetooth Low Energy and
        ANT+ wireless, connecting to a wide array of devices and sensors.
        I wrote high-level functions for analysis and interfaced
        with low-level wireless protocols for both Windows and Mac OSX.")
    biomaterials = Project.new("Mesh-based Biomaterials - George Whitesides Lab",
      "projectthumbs/biomaterial140.png",
      "goo.gl/2cgmw1",
      "In an effort to reduce costs for cancer research, I helped develop a polymer-infused
        mesh which, by stacking many layers, becomes a low-oxygen cell-growth environment. I developed
        manufacturing techniques for the mesh-based cells after researching various candidate
        materials. This work was published recently in <i>Biomaterials</i>.")
    pna = Project.new("Peptide Nucleic Acid - Chemistry 100r",
      "projectthumbs/pna140.png",
      "/assets/papers/Ngo_PNAresearch_Final_Draft.pdf",
      "Peptide -or polyamide- nucleic acids (PNA) are modified oligonucleotide analogs that entirely replace
        the deoxyribose backbone of DNA with peptide backbone, chemically very similar - or identical - to the
        linkages binding amino acids. Because PNA lacks a the negatively charged backbone characteristic of
        natural DNA, there is some hope that PNA could potentially be used to recruit transcription factors to
        target drugs to cells in which certain active genes cause problems.")
    lathe = Project.new("Hand-driven Lathe",
      "projectthumbs/lathe140.png",
      "http://www.youtube.com/watch?v=ftWxtVFpB2w",
      "A desire to engage in the art of woodturning and a lack of the necessary
        equipment inspired me to make my own lathe. I fashioned it from an old bike,
        a saw-horse and a few screws. It achieves high RPM with a hand-crank, and
        the potential for turning other objects is limited only by my own novice
        skill as a woodturner.")
    dataScience = Topic.new("Data Science", [nlp, avalanches])
    software = Topic.new("Software", [wireless_connections, sphero_connection, cs50, jotit])
    chemistry = Topic.new("Chemistry", [biomaterials,pna])
    mech = Topic.new("Mechanical Engineering", [lathe])
    @topics = [dataScience,software,mech,chemistry]
  end

  def artwork
  end

  def bugs
  end

  def collection
  end
end
