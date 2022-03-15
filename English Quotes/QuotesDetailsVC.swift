//
//  QuotesDetailsVC.swift
//  English Quotes
//
//  Created by HEMANG N TALAVIYA on 18/08/19.
//  Copyright © 2019 Hemang. All rights reserved.
//

import UIKit

class cell : UITableViewCell
{

    @IBOutlet weak var objbtnShare: UIButton!
    @IBOutlet weak var objbtnCopy: UIButton!
    @IBOutlet weak var objMainView: UIView!
    @IBOutlet weak var objlblName: UILabel!
}
class QuotesDetailsVC: UIViewController {

    @IBOutlet weak var objMainHeader: UIView!
    @IBOutlet weak var objlblHeader: UILabel!
    @IBOutlet weak var objtblview: UITableView!
    
     var strName: String = ""
    
    let colorTop =  UIColor(red: 207/255.0, green: 199/255.0, blue: 162/255.0, alpha: 1.0).cgColor
    let colorBottom = UIColor(red: 249/255.0, green: 223/255.0, blue: 224/255.0, alpha: 1.0).cgColor
    
    var  arrHomeList = [["name": "Sending you warm wishes on your anniversary; may you continue to grow older and happier together"],
                        ["name": "Some of the best memories of a couple are not just the magic of their first few kisses but the magic they create every time they kiss for the rest of their lives. Happy anniversary"],
                          ["name": "May you continue to be a wonderful husband and wife to each other. Wishing you nothing but happiness, love, and joy in the years ahead"],
                          ["name": "Wishing you cheers and much happiness as you celebrate another year of your wonderful journey together"],
                          ["name": "The wrinkles on your faces are not signs of how much you have aged, but how beautifully your marriage has survived the test of time. Happy anniversary"],
                          ["name": "Wishing that you two will grow even closer together with each passing day. Happy anniversary"],
                          ["name": "Even from the start, I knew you were the perfect one for me. Wishing us a very wonderful happy anniversary"],
                          ["name": "May the love you have for one another continue to grow and blossom with each passing year. Wishing you endless happiness, joy, and love on your anniversary and always"],
                          ["name": "Roses are red, violets are blue. Say you want to keep me forever, ‘cause I know I do! Happy Anniversary!"],
                          ["name": "Thinking of you today with loving wishes, as you reflect on all the wonderful memories of your past together and of future dreams together"],
                          ["name": "It’s not just today that I feel special with you, but every day that we’ve been together. Thank you for your years of love and support"],
                          ["name": "The echo of your love and the sound of the sea have a few things in common – they are both constant, soulful and eternal. Happy anniversary"]]
    
    var arrAwsome = [["name": "It Doesn’t Matter Where You Came From. All That Matters Is Where You Are Going"],
                     ["name": "Think Big And Don’t Listen To People Who Tell You It Can’t Be Done. Life’s Too Short To Think Small.”- An Awesome Quote By Tim Ferriss"],
                     ["name": "You Can Develop Any Habit Or Thought Or Behavior That You Consider Desirable Or Necessary"],
                     ["name": "A Clear Vision, Backed By Definite Plans, Gives You A Tremendous Feeling Of Confidence And Personal Power"],
                     ["name": "The Person Who Says It Cannot Be Done Should Not Interrupt The Person Who Is Doing It"],
                     ["name": "Success Is Getting What You Want, Happiness Is Wanting What You Get"],
                     ["name": "Think Continually About What You Want, Not About The Things You Fear"],
                     ["name": "Optimism Is The One Quality More Associated With Success And Happiness Than Any Other"],
                     ["name": "Success Does Not Consist In Never Making Mistakes, But In Never Making The Same One A Second Time"],
                     ["name": "The Only Place Where Success Comes Before Work Is In The Dictionary"],
                     ["name": "Happiness Is Not Something Readymade. It Comes From Your Own Actions"],
                     ["name": "I Am Thankful For All Of Those Who Said, “No” To Me. It’s Because Of Them I’m Doing It Myself"],
                     ["name": "Don’t Be Too Timid And Squeamish About Your Actions. All Life Is An Experiment. The More Experiments You Make The Better"],
                     ["name": "All Our Dreams Can Come True If We Have The Courage To Pursue Them"],
                     ["name": "Develop An Attitude Of Gratitude This Year, And Give Thanks For Everything That Happens To You, Knowing That Every Step Forward Is A Step Toward Achieving Something Bigger And Better Than Your Current Situation"],
                     ["name": "Move Out Of Your Comfort Zone. You Can Only Grow If You Are Willing To Feel Awkward And Uncomfortable When You Try Something New"],
                     ["name": "You’re only here for a short visit. Don’t hurry, don’t worry. And be sure to smell the flowers along the way"],
                     ["name": "A man who dares to waste one hour of time has not discovered the value of life"],
                     ["name": "If life were predictable it would cease to be life, and be without flavor"],
                     ["name": "All of life is peaks and valleys. Don’t let the peaks get too high and the valleys too low"],
                     ["name": "Life is like riding a bicycle. To keep your balance, you must keep moving"],
                     ["name": "I enjoy life when things are happening. I don’t care if it’s good things or bad things. That means you’re alive"]]

     var arrBest = [["name": "It’s not about ideas. It’s about making ideas happen"],
                    ["name": "Always deliver more than expected"],
                    ["name": "Don’t be intimidated by what you don’t know. That can be your greatest strength and ensure that you do things differently from everyone else"],
                    ["name": "Fearlessness is like a muscle. I know from my own life that the more I exercise it, the more natural it becomes to not let my fears run me"],
                    ["name": "One does not discover new lands without consenting to lose sight of the shore for a very long time"],
                    ["name": "Sweating the details is more important than anything else"],
                    ["name": "You shouldn’t blindly accept a leader’s advice. You’ve got to question leaders on occasion"],
                    ["name": "You shouldn’t blindly accept a leader’s advice. You’ve got to question leaders on occasion"],
                    ["name": "Your time is limited, so don’t waste it living someone else’s life"],
                    ["name": "Never give up. Today is hard, tomorrow will be worse, but the day after tomorrow will be sunshine"],
                    ["name": "Define success on your own terms, achieve it by your own rules, and build a life you’re proud to live"],
                    ["name": "When I dare to be powerful – to use my strength in the service of my vision, then it becomes less and less important whether I am afraid"],
                    ["name": "Those who dare to fail miserably can achieve greatly"],
                    ["name": "I can’t give you a sure-fire formula for success, but I can give you a formula for failure: try to please everybody all the time"],
                    ["name": "Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world"],
                    ["name": "Challenges are what make life interesting and overcoming them is what makes life meaningful"],
                    ["name": "Our greatest fear should not be of failure… but of succeeding at things in life that don’t really matter."],
                    ["name": "Remember that the happiest people are not those getting more, but those giving more"],
                    ["name": "Many of life’s failures are people who did not realize how close they were to success when they gave up"],
                    ["name": "Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world"],
                    ["name": "Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world"],
                    ["name": "Success in business requires training and discipline and hard work. But if you’re not frightened by these things, the opportunities are just as great today as they ever were"]]
    
    var arrChildhood = [["name" : "When we are children we seldom think of the future. This innocence leaves us free to enjoy ourselves as few adults can. The day we fret about the future is the day we leave our childhood behind"],["name" : "Most of the time, a kid doesn't think about what he's doing or why. This is the privilege of childhood"],["name" : "If you carry your childhood with you, you never become older"],["name" : "Childhood is the fiery furnace in which we are melted down to essentials and that essential shaped for good"],["name" : "There is always one moment in childhood when the door opens and lets the future in"],["name" : "The older I grow the more earnestly I feel that the few joys of childhood are the best that life has to give"],["name" : "When you finally go back to your old hometown, you find it wasn't the old home you missed but your childhood"],["name" : "I cannot think of any need in childhood as strong as the need for a father's protection"],["name" : "How dear to this heart are the scenes of my childhood, when I found recollection presents them to view"],["name" : "Childhood means simplicity. Look at the world with the child's eye - it is very beautiful"],["name" : "Childhood has its secrets and its mysteries; but who can tell or who can explain them"],["name" : "Childhood is like a mirror, which reflects in afterlife the images first presented to it. The first thing continues forever with the child. The first joy, the first sorrow, the first success, the first failure, the first achievement, the first misadventur"], ["name" : "Childhoods never last. But everyone deserves one"],["name" : "A happy childhood? is the worst possible preparation for life"],["name" : "Memories of childhood were the dreams that stayed with you after you woke"], ["name" : "There is no land like the land of your childhood"],["name" : "There are things about your childhood you hold into, because they were so much part of you. The places you went, the people you knew"],["name" : "Childhood is like being drunk. Everyone remembers what you did, except you"]]
    
    var arrClever = [["name": "Men are only clever at shifting blame from their own shoulders to those of others"],["name": "I am neither especially clever nor especially gifted. I am only very, very curious"],["name": "Be good, sweet maid, and let who will be clever"],["name": "Always forgive your enemies, but never forget their names"],["name": "He who knows others is clever; He who knows himself has discernment"],["name": "The greatest fools are ofttimes more clever than the men who laugh at them"],["name": "One of the lessons of history is that nothing is often a good thing to do and always a clever thing to say"],["name": "Clever gimmicks of mass distraction yield a cheap soulcraft of addicted and self-medicated narcissists"],["name": "The obstinacy of cleverness and reason is nothing to the obstinacy of folly and inanity"],["name": "Against the beautiful and the clever and the successful, one can wage a pitiless war, but not against the unattractive: then the millstone weighs on the breast"],["name": "Patience and tenacity are worth more than twice their weight of cleverness"],["name": "The cleverest of all, in my opinion, is the man who calls himself a fool at least once a month"],["name": "A clever, ugly man every now and then is successful with the ladies, but a handsome fool is irresistible"],["name": "Don't be too clever for an audience. Make it obvious. Make the subtleties obvious also"],["name": "It's the people who try to be clever who never are; the people who are clever never think of trying to be"],["name": "Cleverness is serviceable for everything, sufficient for nothing"],["name": "An inefficient virus kills its host. A clever virus stays with it"],["name": "To be clever enough to get a great deal of money, one must be stupid enough to want it"],["name": "If you're not very clever you should be conciliatory"],["name": "A clever, imaginative, humorous request can open closed doors and closed minds"],["name": "The greatest fools are ofttimes more clever than the men who laugh at them"],["name": "Being clever was when you looked at how things were and used the evidence to work out something new"],["name": "Be aware. Be Curious. Be Clever. Innovation is Something to be Reckoned with"],["name": "Justice fails because victims used to be too kind and criminals too clever"],["name": "It Is a great act of cleverness to be able to conceal oneâ€™s being clever"],["name": "Clever people will recognize and tolerate nothing but cleverness"],["name": "Clever men are good, but they are not the best"],["name": "The universe contains protons, neutrons, electrons and morons"],["name": "A clever conjurer is welcome anywhere, and those of us whose powers of entertainment are limited to the setting of booby-traps or the arranging of apple-pie beds must view with envy the much greater tribute of laughter and applause which is the lot of the prestidigitator with some natural gift for legerdemain"]]
    
    var arrCool = [["name":"To live a creative life, we must lose our fear of being wrong"],["name":"Be strong enough to stand alone, smart enough to know when you need help, and brave enough to ask for it"],["name":"To live a creative life, we must lose our fear of being wrong"],["name":"If people are talking behind your back, be happy that you are the one in front"],["name":"Hurt me with the truth but never comfort me with a lie"],["name":"Almost every successful person begins with two beliefs: the future can be better than the present, and I have the power to make it so"],["name":"Those who think they know it all are very annoying to those of us who actually do"],["name":"We hope you love these cool quotes, don’t forget to share with your friends and comment your favorite quotes"],["name":"I finally realized that people are prisoners of their phones... that's why it's called a cell Phone"],["name":"What is the best thing to do when you have a hole in a boat and water is leaking inside? Make another hole to drain the water "],["name":"Dear Math, please grow up and solve your own problems, I'm tired of solving them for you"],["name":"It takes real skills to choke on air, fall up the stairs and trip over nothing. I have those skills "],["name":"I hate when I lose things at work, like pens, papers, sanity and dreams"],["name":"Today I bought a doughnut without sprinkles. This diet thing is hard"],["name":"I may be a beginner at some things, but I have a black belt in shopping "],["name":"Instead of LOL why don't you try LOLWKASF: Laughing Out Loud While Keeping A Straight Face "],["name":"If you think nobody cares that you're alive try missing a couple of payments"],["name":"My boss told me to start every presentation with a joke. The first slide was my paycheck"],["name":"It's hard to find a friend who is 95% talented, 96% funny, 98% loving, 99% intelligent and 100% sweet. So don't you dare lose me "],["name":"wonder what people do with all the time they save by writing K instead of Ok "],["name":"Whenever I have a headache I take 2 aspirin and keep away from children, just like it says on the bottle "],["name":"Be kind to people, and if that's too much to ask for then just be weird to people. It's the least you can do "],["name":"I hate having a messy house. Not enough to actually clean it, but enough to give it a disgusted stare while I peacefully relax on the couch"],["name":"I don't want to brag or anything, but I can still fit in the earrings I wore in high school"],["name":"You have never experienced true fear until a poster falls off the wall in the middle of the night"],["name":"I'm always in a rush to go home, and do absolutely nothing "],["name":"Just once I'd like to wake up, turn on the news, and hear Monday has been cancelled and then go back to sleep"],["name":"I try to contain my craziness, but the lid keeps popping off"],["name":"I'm slowly becoming an adult... please make it stop"],["name":"Me watching Olympics: Woah! That was outstanding! Announcer: Another devastating mistake"]]
    
    var arrEmotional = [["name" : "The best and most beautiful things in the world cannot be seen or even touched. They must be felt with the heart"],["name" : "I don't want to be at the mercy of my emotions. I want to use them, to enjoy them, and to dominate them"],["name" : "One thing you can't hide - is when you're crippled inside"],["name" : "The emotion that can break your heart is sometimes the very one that heals it"],["name" : "Your emotions are the slaves to your thoughts, and you are the slave to your emotions"],["name" : "Pity those who don't feel anything at all"],["name" : "I envy people that know love. That have someone who takes them as they are"],["name" : "Nothing always stays the same. You don't stay happy forever. You don't stay sad forever"],["name" : "You can never control who you fall in love with, even when you're in the most sad, confused time of your life. You don't fall in love with people because they're fun. It just happens"],["name" : "Some days are just bad days, that's all. You have to experience sadness to know happiness, and I remind myself that not every day is going to be a good day, that's just the way it is"],["name" : "I am closest to my mother, as she is my rock, my pillar of strength, and my world. Not only has she stood by me through all times - happy, sad, and otherwise - but there have even been moments when I had completely lost hope, and her immense belief in me had lifted me up"],["name" : "I am closest to my mother, as she is my rock, my pillar of strength, and my world. Not only has she stood by me through all times - happy, sad, and otherwise - but there have even been moments when I had completely lost hope, and her immense belief in me had lifted me up"],["name" : "Grief is never something you get over. You don't wake up one morning and say, 'I've conquered that; now I'm moving on.' It's something that walks beside you every day. And if you can learn how to manage it and honour the person that you miss, you can take something that is incredibly sad and have some form of positivity"],["name" : "It's time to say goodbye, but I think goodbyes are sad and I'd much rather say hello. Hello to a new adventure."],["name" : "I'm not a sad person, upset the whole time, but I seem to be quite emotional"],["name" : "Everything takes me longer than I expect. It's the sad truth about life"],["name" : "There is a sacredness in tears. They are not the mark of weakness, but of power. They speak more eloquently than ten thousand tongues. They are the messengers of overwhelming grief, of deep contrition, and of unspeakable love"],["name" : "The tragedy of life is in what dies inside a man while he lives - the death of genuine feeling, the death of inspired response, the awareness that makes it possible to feel the pain or the glory of other men in yourself"],["name" : "How do I control my emotions? How do I stop getting angry so often, or how do I stop being sad? And I think there's a really important distinction to understand is that you can't completely control your emotions. What you control is your reaction to your own emotions. And a lot of people don't ever make that separation for what goes on with them"],["name" : "There are so many things in life that make you sad, you have to be happy"],["name" : "We can feel sad, hurt, demoralized. But we can't give up"],["name" : "When you're happy you don't always have to be laughing, and when you're sad you don't have to be crying; sometimes it's the opposite. You laugh when you're the most upset"],["name" : "Every human walks around with a certain kind of sadness. They may not wear it on their sleeves, but it's there if you look deep"],["name" : "People who have never dealt with depression think it's just being sad or being in a bad mood. That's not what depression is for me; it's falling into a state of grayness and numbness"]]
    
    var arrFriends = [["name" : "A real friend is one who walks in when the rest of the world walks out"],["name" : "If you live to be 100, I hope I live to be 100 minus 1 day, so I never have to live without you"],["name" : "I like to listen. I have learned a great deal from listening carefully. Most people never listen"],["name" : "Friendship is born at that moment when one person says to another, ‘What! You too? I thought I was the only one"],["name" : "True friendship comes when the silence between two people is comfortable"],["name" : "Sweet is the memory of distant friends! Like the mellow rays of the departing sun, it falls tenderly, yet sadly, on the heart"],["name" : "There’s not a word yet for old friends who’ve just met"],["name" : "A single rose can be my garden… a single friend, my world"],["name" : "Don’t make friends who are comfortable to be with. Make friends who will force you to lever yourself up"],["name" : "You can make more friends in two months by becoming interested in other people than you can in two years by trying to get other people interested in you"],["name" : "A friend is someone who understands your past, believes in your future, and accepts you just the way you are"],["name" : "Ultimately the bond of all companionship, whether in marriage or in friendship, is conversation"],["name" : "What you do not want done to yourself, do not do to others"],["name" : "I don’t need a friend who changes when I change and who nods when I nod; my shadow does that much better"],["name" : "A true friend never gets in your way unless you happen to be going down"],["name" : "The real test of friendship is can you literally do nothing with the other person? Can you enjoy those moments of life that are utterly simple?"],["name" : "A loyal friend laughs at your jokes when they’re not so good, and sympathizes with your problems when they’re not so bad"],["name" : "It is not a lack of love, but a lack of friendship that makes unhappy marriages"],["name" : "Friendship is the hardest thing in the world to explain. It’s not something you learn in school. But if you haven’t learned the meaning of friendship, you really haven’t learned anything"],["name" : "If ever there is tomorrow when we're not together… there is something you must always remember. You are braver than you believe, stronger than you seem, and smarter than you think. But the most important thing is, even if we're apart… I'll always be with you"],["name" : "Growing apart doesn’t change the fact that for a long time we grew side by side; our roots will always be tangled. I’m glad for that"],["name" : "One’s friends are that part of the human race with which one can be human"],["name" : "One measure of friendship consists not in the number of things friends can discuss, but in the number of things they need no longer mention"],["name" : "Be slow to fall into friendship; but when thou art in, continue firm & constant"]]
    
    var arrFlirt = [["name" : "I wish I was your mirror, so that I could look at you every morning"],["name" : "When I need a pick me up, I just think of your laugh and it makes me smile"],["name" : "I really like our friendship, especially when we make out"],["name" : "If I had a candy bar for every time I thought of you, I would be fat"],["name" : "My heart skips a beat every time I think of you. Or maybe it’s more of a somersault"],["name" : "It’s said that nothing lasts forever. Will you be my nothing"],["name" : "I’m lucky because I have plans for today, for tomorrow, for the week, and for my whole life—to make you happy"],["name" : "I don’t think about very many things, and I don’t think for very long, but when I do think, it invariably tends to be about you"],["name" : "God created the world in six days, rested on the seventh, but it took him thousands of years to produce someone as perfect as you"],["name" : "You looked so beautiful the last time I saw you, that I forgot what I was going to say"],["name" : "I can’t raise the courage to tell you how much I adore you, so I guess I’ll just keep it to myself"],["name" : "You looked great today. I know I didn’t see you, but I know you look great every day"],["name" : "Each time I see you, your smile gives me light"],["name" : "The one thing I can’t resist in this life is your lips"],["name" : "How do you manage to look so stunning every day? When I look at you, I become speechless"],["name" : "I used to be a terrible flirt. I’m much better at it now"],["name" : "I believe that every woman is special, and I believe that every woman deserves a gentleman. Well, I am the gentleman for you. I was born to take care of you and to love you"],["name" : "You wanna know who’s amazing and has the cutest smile ever? Read the first word again"],["name" : "I looked hot today. You missed out"],["name" : "By the way, I’m wearing the smile you gave me"],["name" : "You may be out of sight but you’re never out of my mind"],["name" : "You sat down next to me and I think I forgot to breathe"],["name" : "I looked hot today. You missed out"]]
    
    var arrFunny = [["name" : "If I won the award for laziness, I would send somebody to pick it up for me "],["name" : "Never argue with an idiot they’ll drag you down to their level and beat you through experience"],["name" : "Everybody wishes they could go to heaven but no one wants to die"],["name" : "Life is like a hot bath. It feels good while you’re in it, but the longer you stay in, the more wrinkled you get"],["name" : "Why are they called apartments if they are all stuck together"],["name" : "Don’t knock on death’s door. Hit the doorbell and run. He hates that"],["name" : "If you can’t get someone out of your head, Then maybe they are supposed to be there"],["name" : "I wish my book of life was written in pencil … There are a few pages I would like to erase"],["name" : "I ran into my ex today…put it in reverse and did it again"],["name" : "Do not drink and drive or you might spill the drink"],["name" : "Never judge someone until you walk a mile in their shoes. By that time, they’ll be a mile away and barefoot."],["name" : "Don’t think of yourself as an ugly person, think of yourself as a beautiful monkey. It always gets laughs!"],["name" : "When life gives you lemons, make grape juice, then sit back,and let the wold wonder how you did it."],["name" : "Whenever I find the key to success, someone changes the lock"],["name" : "I love love love this quote!If life gives you lemons, make lemonade. Then use the profits to buy an assault rifle. See if life makes the same mistake twice"],["name" : "If common sense is so common why is there so many people with out it?"],["name" : "My mind is like lighting, one brilliant flash, then its gone"],["name" : "Your intelligence is my common sense"],["name" : "Dear optimist, pessimist, and realist, while you guys were arguing about the glass of water, I drank it.Sincerely, the opportunist"],["name" : "Life is a waste of time, time is a waste of life, so get wasted and the time of your life! If you die in an elevator, be sure to push the UP button"],["name" : "Girls want a lot of things from one guy. Conversely, guys want one thing from a lot of girls"],["name" : "I went on a diet, stopped smoking dope, cut out the drinking and heavy eating, and in fourteen days I lost two weeks"]]
    
    var arrJealous = [["name" : "Moral indignation is jealousy with a halo"],["name" : "Jealousy is a disease, love is a healthy condition. The immature mind often mistakes one for the other, or assumes that the greater the love, the greater the jealousy - in fact, they are almost incompatible; one emotion hardly leaves room for the other"],["name" : "Resentment is like drinking poison and waiting for the other person to die"],["name" : "Anger, resentment and jealousy doesn't change the heart of others-- it only changes yours"],["name" : "You can only be jealous of someone who has something you think you ought to have yourself"],["name" : "The only thing more frustrating than slanderers is those foolish enough to listen to them"],["name" : "The thermometer of success is merely the jealousy of the malcontents"],["name" : "You can only be jealous of someone who has something you think you ought to have yourself"],["name" : "What sort of love is permeated by jealousy? You are jealous because you are unaware that everything you need is inside you"],["name" : "A competent and self-confident person is incapable of jealousy in anything. Jealousy is invariably a symptom of neurotic insecurity"],["name" : "The jealous are troublesome to others, but a torment to themselves"],["name" : "Jealousy is the tribute mediocrity pays to genius"],["name" : "Jealousy lives upon doubts. It becomes madness or ceases entirely as soon as we pass from doubt to certainty"],["name" : "Love sees sharply, hatred sees even more sharp, but Jealousy sees the sharpest for it is love and hate at the same time"],["name" : "Never waste jealousy on a real man:_ it is the imaginary man that supplants us all in the long run"],["name" : "Jealousy in romance is like salt in food._ A little can enhance the savor, but too much can spoil the pleasure and, under certain circumstances, can be life-threatening"],["name" : "Jealousy is the jaundice of the soul"],["name" : "Jealousy is never satisfied with anything short of an omniscience that would detect the subtlest fold of the heart"],["name" : "Comparison is a very foolish attitude, because each person is unique and incomparable. Once this understanding settles in you, jealousy disappears"],["name" : "Jealousy would be far less torturous if we understood that love is a passion entirely unrelated to our merits"],["name" : "Jealousy is not a barometer by which the depth of love can be read, it merely records the degree of the lover's insecurity"],["name" : "More men die of jealousy than of cancer"],["name" : "Love may be blind but jealousy has 20-20 vision"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer()
        objlblHeader.text = strName
    }
    func gradientLayer(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = objMainHeader.bounds
        objMainHeader.layer.insertSublayer(gradientLayer, at:0)
    }
    @objc func Copy(Sender: AnyObject){
        let selectedSection = Sender.tag
        UIPasteboard.general.string = arrHomeList[selectedSection!]["name"]
    }
    @objc func Share(Sender: AnyObject){
        let shreSelection = Sender.tag
        let textToShare = "Swift is awesome!  Check out this website about it!"
       
            let objectsToShare: [Any] = [arrHomeList[shreSelection!]["name"]]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            self.present(activityVC, animated: true, completion: nil)
        
    }
    @IBAction func btnBackAction(_ sender: Any) {
         navigationController?.popViewController(animated: true)
    }
}
//MARK: table view Delegate
extension QuotesDetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if strName == "Anniversary"{
           return arrHomeList.count
        } else if strName == "Awesome" {
            return arrAwsome.count
        }else if strName == "Best" {
              return arrBest.count
        }else if strName == "ChildHood" {
              return arrChildhood.count
        }else if strName == "Clever" {
              return arrClever.count
        }else if strName == "Cool" {
              return arrCool.count
        }else if strName == "Emotional" {
              return arrEmotional.count
        }else if strName == "Friends" {
              return arrFriends.count
        }else if strName == "Flirt" {
              return arrFlirt.count
        }else if strName == "Funny" {
              return arrFunny.count
        }else {
              return arrJealous.count
        }
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = objtblview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! cell
        if strName == "Anniversary"{
             cell.objlblName.text = arrHomeList[indexPath.row]["name"]
        } else if strName == "Awesome" {
            cell.objlblName.text = arrAwsome[indexPath.row]["name"]
        }else if strName == "Best" {
            cell.objlblName.text = arrBest[indexPath.row]["name"]
        }else if strName == "ChildHood" {
             cell.objlblName.text = arrChildhood[indexPath.row]["name"]
        }else if strName == "Clever" {
            cell.objlblName.text = arrClever[indexPath.row]["name"]
        }else if strName == "Cool" {
            cell.objlblName.text = arrCool[indexPath.row]["name"]
        }else if strName == "Emotional" {
            cell.objlblName.text = arrEmotional[indexPath.row]["name"]
        }else if strName == "Friends" {
            cell.objlblName.text = arrFriends[indexPath.row]["name"]
        }else if strName == "Flirt" {
            cell.objlblName.text = arrFlirt[indexPath.row]["name"]
        }else if strName == "Funny" {
            cell.objlblName.text = arrFunny[indexPath.row]["name"]
    
        } else{
           cell.objlblName.text = arrJealous[indexPath.row]["name"]
        }
       
        cell.selectionStyle = .none
        cell.objbtnCopy.addTarget(self, action: #selector(Copy), for: .touchUpInside)
        cell.objbtnCopy.tag = indexPath.row
        cell.objbtnShare.addTarget(self, action: #selector(Share), for: .touchUpInside)
        cell.objbtnShare.tag = indexPath.row
        cell.objMainView.layer.shadowColor = UIColor.black.cgColor
        cell.objMainView.layer.shadowOffset = CGSize(width: 3, height: 6)
        cell.objMainView.layer.shadowOpacity = 0.7
        cell.objMainView.layer.shadowRadius = 4.0
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
