# Generate log entries

import sys
sys.path.append("./out")

from argparse import ArgumentParser
from datetime import datetime
import random
import time
import urllib

from franz import Topic


dogQuotes = """
"On the Internet, everybody knows you're a dog." --Oscar Wilde
"You can say any foolish thing to a dog, and the dog will give you a look that says, 'Wow, you're right! I never would've thought of that!'" --Dave Barry (author, Dave Barry Hits Below the Beltway: A Vicious and Unprovoked Attack on Our Most Cherished Political Institutions)
"A dog teaches a boy fidelity, perseverance, and to turn around three times before lying down." --Robert Benchley (humorist and actor, Broadway Melody of 1938)
"A dog is the only thing on earth that loves you more than he loves himself." --Josh Billings (a.k.a. Henry Wheeler Shaw; humorist and lecturer)
"Hounds follow those who feed them." --Otto von Bismarck (1st Chancellor of Germany)
"Dogs are not our whole life, but they make our lives whole." --Roger Caras (photographer and writer)
"Every dog has his day, unless he loses his tail, then he has a weak-end." --June Carter Cash (singer)
"Dogs are wise. They crawl away into a quiet corner and lick their wounds and do not rejoin the world until they are whole once more." --Agatha Christie (author, Death on the Nile)
"The world would be a nicer place if everyone had the ability to love as unconditionally as a dog." --M.K. Clinton (author, The Returns)
"The better I get to know men, the more I find myself loving dogs." --Charles de Gaulle (former President of the French Republic)
"The only creatures that are evolved enough to convey pure love are dogs and infants." --Johnny Depp (actor, Pirates of the Caribbean)
"Dogs are better than human beings because they know but do not tell." --Emily Dickinson (poet, "Hope is the Thing with Feathers")
"What counts is not necessarily the size of the dog in the fight; it's the size of the fight in the dog." --Dwight D. Eisenhower (34th President of the United States)
"Why does watching a dog be a dog fill one with happiness?" --Jonathan Safran Foer (author, Extremely Loud and Incredibly Close)
"There are three faithful friends: an old wife, an old dog, and ready money." --Benjamin Franklin (Founding Father of the United States)
"Dogs love their friends and bite their enemies, quite unlike people, who are incapable of pure love and always have to mix love and hate." --Sigmund Freud (psychoanalyst)
"Women and cats will do as they please, and men and dogs should relax and get used to the idea." --Robert A. Heinlein (author, Starship Troopers)
"When an eighty-five pound mammal licks your tears away, then tries to sit on your lap, it's hard to feel sad." --Kristan Higgins (author, In Your Dreams)
"To his dog, every man is Napoleon; hence the constant popularity of dogs." --Aldous Huxley (author, Brave New World)
"There are times when even the best manager is like the little boy with the big dog -- waiting to see where the dog wants to go so he can take him there." --Lee Iacocca (former president and CEO of Chrysler)
"Anybody who doesn't know what soap tastes like never washed a dog." --Franklin P. Jones (humorist and PR executive)
"A dog can't think that much about what he's doing, he just does what feels right." --Barbara Kingsolver (author, Animal Dreams)
"When the Man waked up he said, 'What is Wild Dog doing here?' And the Woman said, 'His name is not Wild Dog any more, but the First Friend, because he will be our friend for always and always and always.'" --Rudyard Kipling (author, The Jungle Book)
"Once you have had a wonderful dog, a life without one, is a life diminished." --Dean Koontz (author, Whispers)
"Don't accept your dog's admiration as conclusive evidence that you are wonderful." --Ann Landers (a.k.a. Eppie Lederer; famous advice columnist)
"I care not for a man's religion whose dog and cat are not the better for it." --Abraham Lincoln (16th President of the United States)
"A bone to the dog is not charity. Charity is the bone shared with the dog, when you are just as hungry as the dog." --Jack London (author, The Call of the Wild)
"Outside of a dog, a book is man's best friend. Inside of a dog it's too dark to read." --Groucho Marx (comedian)
"Dogs don't rationalize. They don't hold anything against a person. They don't see the outside of a human but the inside of a human." --Cesar Millan (dog trainer)
"Dogs never bite me. Just humans." --Marilyn Monroe (actress, Some Like It Hot)
"No one appreciates the very special genius of your conversation as the dog does." --Christopher Morley (author, Kitty Foyle)
"If you think dogs can't count, try putting three dog biscuits in your pocket and then give him only two of them." --Phil Pastoret (author, Our Boarding House)
"I think dogs are the most amazing creatures; they give unconditional love. For me, they are the role model for being alive." --Gilda Radner (comedienne)
"If there are no dogs in Heaven, then when I die I want to go where they went." --Will Rogers (actor, A Connecticut Yankee)
"The average dog is a nicer person than the average person." --Andy Rooney (contributor, 60 Minutes)
"I wonder if other dogs think poodles are members of a weird religious cult." --Rita Rudner (comedienne)
"Happiness is a warm puppy." --Charles M. Schulz (cartoonist, Peanuts)
"If you eliminate smoking and gambling, you will be amazed to find that almost all an Englishman's pleasures can be, and mostly are, shared by his dog." --George Bernard Shaw (playwright)
"I've seen a look in dogs' eyes, a quickly vanishing look of amazed contempt, and I am convinced that basically dogs think humans are nuts." --John Steinbeck (author, The Grapes of Wrath)
"You think dogs will not be in heaven? I tell you, they will be there long before any of us." --Robert Louis Stevenson (author, Treasure Island)
"Dogs got personality. Personality goes a long way." --Quentin Tarantino (director and screenwriter, Pulp Fiction)
"Some of my best leading men have been dogs and horses." --Elizabeth Taylor (actress, Cleopatra)
"If I have any beliefs about immortality, it is that certain dogs I have known will go to heaven, and very, very few persons." --James Thurber (author, "The Secret Life of Walter Mitty")
"A hungry dog hunts best." --Lee Trevino (golfer)
"If you want a friend in Washington, get a dog." --Harry S. Truman (33rd President of the United States)
"Heaven goes by favor. If it went by merit, you would stay out and your dog would go in." --Mark Twain (author, The Adventures of Tom Sawyer)
"Ever consider what our dogs must think of us? I mean, here we come back from a grocery store with the most amazing haul, chicken, pork, half a cow. They must think we're the greatest hunters on earth!" --Anne Tyler (author, The Accidental Tourist)
"A dog will teach you unconditional love. If you can have that in your life, things won't be too bad." --Robert Wagner (actor, The Longest Day)
"Let sleeping dogs lie." --Robert Walpole (first Prime Minister of Great Britain)
"My dog is worried about the economy because Alpo is up to $3.00 a can. That's almost $21.00 in dog money." --Joe Weinstein (comedian)
"If a dog will not come to you after having looked you in the face, you should go home and examine your conscience." --Woodrow Wilson (28th President of the United States)

""".strip().split("\n")

dogWords = "woof arf ruff yap".split()

levels = ["DEBUG"] * 70 + ["INFO"] * 20 + ["WARNING"] * 7 + ["ERROR"] * 2 + ["CRITICAL"] * 1


def make_random_entry():
    if random.random() > 0.9:
        text = random.choice(dogQuotes)
    else:
        words = [random.choice(dogWords) for idx in range(random.randint(3, 8))]
        text = " ".join(words)
    level = random.choice(levels)
    now = datetime.now()
    return (now.strftime("%Y-%m-%d %H:%M:%S.") + "%06d" % now.microsecond +
            " %8s: " % level +
            text)


def main():
    parser = ArgumentParser()
    parser.add_argument("-r", "--rate", type=float, default=10.0, help="Log messages per second")
    args = parser.parse_args()

    t = Topic("http://127.0.0.1:8080", "T")
    print t.baseUrl
    while True:
        entry = make_random_entry()
        t.push(urllib.quote(entry))
        time.sleep(1.0 / args.rate)


if __name__ == '__main__':
    main()
