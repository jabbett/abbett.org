---
layout: post
title:  "Apple, Google, and the State of mHealth"
date:   2014-11-18 12:00:00 -0400
---
## What problems are we trying to solve?

Apple and Google’s recent \[re\]entry into health care—with the launch of Apple HealthKit and Google Fit—provided the motivation for the most recent episode of The Digital Life, and Jon Follett and Dirk Knemeyer raise some important questions.

<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/156685116&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>

## Should we relinquish our health data to commercial interests? Wouldn’t it better be aggregated and secured by a single, independent non-profit?

I once worked for a particularly libertarian CEO, who confided in me that health data was the one area that he felt government was best suited to manage. A single API and a single data schema for the entire country would make the business of health IT so much easier.

So, this is not a strange wish. In the last decade, we’ve seen the emergence and reemergence of regional health information organizations (RHIOs) which manage health information exchanges (HIEs).

In Massachusetts, HIE progress has been slow and underwhelming, and does not include the patient as a participant until after 2017, at the earliest. Long term, RHIOs and HIEs may be the answer—government as “data utility” makes a lot of sense—but I think the private sector, with strict enforcement of HIPAA’s privacy and security rules, is a better bet for health innovation now (and likely well into the future).

Is this just a boondoggle aimed at the quantified health crowd? What about disconnected folks like grandma? And the poor?

Every industry has early adopters who care far more about innovation than the average consumer. While it’s important to think about the societal implications of our technology choices—especially in health care—we should not simply walk away from the problem if an otherwise reasonable solution doesn’t work for 100% of the market.

In my work, we always keep this in mind. Forget smartphones, many of our potential patient-users don’t have e-mail addresses or computers, especially among the elderly. But our platform still functions very well for the constellation of care providers around every disconnected grandmother—the doctors, nurses, schedulers, social workers, care coordinators, and family members who rely on our technology to enable team-based care.

(I also try to remember, often to calm myself while fixing Internet Explorer 8 bugs, that today’s emoji-crazed tweens will be tomorrow’s uber-connected patients and doctors.)

As Mitch Kapor told us at PCHRI 2006, there is no silver bullet to health IT, only “silver buckshot.” We should expect a patchwork of solutions serving different segments of the population.

## Didn’t big players like Microsoft and Google fail at this already?

Dirk used the term “crash and burn.” The main reason personal health records (PHRs) like Google Health and Microsoft HealthVault have failed in the marketplace (to date) is the burden of data entry, and the lack of a true problem to solve.

If all my sites of care (hospitals, clinics, laboratories, pharmacies) do not automatically feed into my health record, then I am left to do the data entry myself. And if I do the entry myself, will anyone trust that the data is accurate?

And even if I very carefully transcribe all my lab results, will my health record actually solve any health problems for me?

The 1994 Guardian Angel Manifesto still, after 20 years, has an excellent description of what an ideal electronic health assistant should do, and even today’s most cutting-edge personal health apps only barely scratch the surface.

But “failure” is a relative term. Microsoft HealthVault is still alive, with 233 integrated medical devices and 149 apps from folks like Quest, LapCorp, and CVS. Health IT is a long slog. Microsoft’s slow and steady approach may yet win the race.

## Won’t spreading data across two distinct mobile platforms be a burden on clinicians?

Again, in an ideal world, there would only be one, perfect platform. If we take a moment to reflect on the messy reality of health care, we’ll see thousands, if not millions, of disconnected “platforms”: the handwritten lists, the three-ring binders, the thumb drives, the Google Docs, the bags full of prescription bottles.

Two well-documented, well-funded electronic health platforms that will automatically materialize on billions of smartphones worldwide… that sounds like a breath of fresh air.

## But Apple’s bad at writing software.

Have you seen the average hospital’s hastily-assembled patient portal? Have you seen any of the big commercial electronic health records? I’d take Apple over those guys any day.

Even if you think Apple’s software is lacking, you cannot deny their mastery of the platform, and that’s what’s truly important about HealthKit. The folks behind the SMART Platform recognized this in 2012: to unleash the creativity of software developers, we need to free them from the burdens of health system integration (data, device, EHR) through a reusable app architecture.

Now, Apple is ready to reappropriate its own, hugely successful app architecture to that end, and the user experience could be exceptional:

### If you own a smartphone, you already know about apps.

You almost certainly know how to log into an app that stores data in the cloud. You may have even experienced how two apps interact, like when you attach a file from Dropbox while using Mailbox. Soon, you won’t need to learn a different language, device, or platform to manage your health.

### Change hospitals, switch apps.

Install the FitBit app… your sleep and activity data get collected into your mobile health record. Install the Mayo Clinic app… your appointments, clinical notes, lab tests, and x-rays get collected into your mobile health record. Change pedometers, switch apps. Change hospitals, switch apps. All your old data stays collected on your iPhone or Nexus, ready to be shared, interpreted, extended, and updated with whatever new apps come our way.

### A focus on what each developer does best

With your health data stored outside each individual app, each app developer can focus on what she does best—collecting data from connected hardware, explaining your data in a friendly way, modifying your behavior, or helping you adapt your own care plan—without worrying about everything in the hardware/software/data chain.

### Push problems into the realm of technology

Aggregating a billion sheets of paper in a million file cabinets is hard. Aggregating a billion JSON snippets from a dozen oAuth-enabled APIs is child’s play. The more that our health problems move out of the paper/physical world and move into the world of bits, the easier it is to abstract away the complication (for developers and for consumers).

I have in mind a Filepicker.io-style solution that simplifies the connection of any health data source to any health app. Perfectly doable.

* * *

All of this will ultimately mean more consumer choice: better hardware, better software, better health advice. Real interoperability, real patient control, real meaningful use.
