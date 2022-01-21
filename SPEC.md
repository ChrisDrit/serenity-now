# Project details

At Sidekick, our therapists need to write "visit notes" after a session. A visit note serves a few purposes:

* It is our record to show insurance companies (if audited) what happened during the session

* It is part of the patient's medical record and history

* It helps us to track patient progress and outcomes

* If the patient switches therapists, it allows the new therapist to see what that child has been working on

A few things to know about notes:

* Ideally a therapist wants to complete the note during the session (although this is not always possible for various reasons)

* Therapists often use a shorthand when writing a note (however there is not necessarily an industry standard nor is there always consistency from one therapist to the next):

* Therapists use +/- to indicate successful or unsuccessful trials (i.e. if the patient is practicing the pronunciation of the word "shark" and says it correctly the therapist would enter "+" and if the patient said it incorrectly the therapist would enter "-")

* Therapists often use abbreviations (i.e. IWP = initial word position - indicating they are practicing a sound that appears at the beginning of a word)

* Therapists try to record prompting type/level (i.e. did they provide any help or did the patient come up with the answer on their own)

* Therapists often record the specific errors made (i.e. if the patient was practicing words starting with the /sh/ sound and made a mistake with the word "shark", the therapist might note that)

* A patient has a POC (plan of care) wherein the therapist creates goals specific to that patient. In a particular session the therapist will typically focus on a subset of the goals in the POC (i.e. in this session the therapist will focus on goal #2 and goal #3 / the next week they may focus on goal #3 and #4). The therapist might reference these goals with shorthand (i.e. STG3 = short term goal #3, LTG1 = long term goal #1)

Here are a few examples of real-life visit notes:

Example #1

```
/sh/ IWP imitative -++--+++-+ 6/10 60%
errors: sheep, she, shape
```

Example #2

```
Expressive/Pragmatic Language - book (the tiny seed)
STG2: named vocabulary in pictures -visual/verbal/max cues
sun -+
fish +
seed +
bird - -
grass +
snow -
rain -
foot -
flower - -
tree +
Total: 5/13=38%
```

Example #3

```
STG3: labeled vocabulary (nouns, verbs) -visual/mod cues:
nouns: +++++ +++ 8/8
errors: 0
verbs: ++ - - - - + 3/7
errors: swim, kick, catch, throw
Total: 10/13=77%
```

The goal of this project is to create a (very) small application using Ruby on Rails that encapsulates the following functionality:

* a new visit note can be created
* the visit note, at a minimum, has a text field which stores the note

Please limit yourself to 10 hours or less for this project. Don't fret if what you have is incomplete. The most important part of this project is the discussion with you afterwards and hearing about what you would have liked to do if you had more time.

**DO**

* Focus on the user experience. It should be first and foremost easy-to-use and functional.

* Think about how structured data could be captured from a note or in the note-taking process. As you can probably see in the examples above, there is some interesting data encapsulated in a note. This data would be very useful to track patient progress/outcomes; however, it can be tough to extract if just stored as plain text.

**DON'T**

* Spend time playing code golf. Your time will be best spent thinking about and working on the user experience AND thinking about the direction you would take this project if you had more time to work on it.

* Worry about the patient. In real life the note would belong to a patient and we would need a separate Patient model, etc. For purposes of this project, to keep the scope limited, you can ignore the patient and only focus on the note editor itself.

* Worry about authentication / users / etc. That is out of the scope of the project.
