---
layout: post
title:  "Code reviews the WRITE way"
description: "Communication tips for giving more effective code review comments"
date:   2019-06-12 08:57:00 -0400
---

I'm currently taking a course on how to become an online instructor in a
graduate professional studies program. One of our [reading assignments on netiquette](https://www.duq.edu/about/centers-and-institutes/center-for-teaching-excellence/teaching-and-learning/netiquette-for-online-learning)
included a teacher communication technique&mdash;_warning: corny name ahead_&mdash;called
"The WRITE Way." The recommendations (be warm, responsive, inquisitive, tentative, and empathetic) resonated with me&mdash;it's an approach
I've tried to adopt in my own clumsy ways over the years.

When a colleague shared [Angelika Tyborska](https://twitter.com/atyborska93)'s
article about about [how to give great code reviews](https://dev.to/atyborska93/how-to-give-great-code-reviews-44jg),
her advice to "avoid judgemental and bossy language" reminded me immediately of
this WRITE Way technique.

> The easiest way to stop sounding judgemental and bossy is to assume you are wrong, and the reviewee is right. Then ask questions that will help you realize why you are wrong. After all, they probably spent much more time working on this code than you spent on reviewing it. They are more likely to understand the details.

When giving a remote code review, i.e. through a GitHub pull request, there's a lot to learn from the WRITE terminology:

# Warmth

> Being warm online is a way of reminding others (and you) that it is people who are engaged in communication, not software.

I always start my feedback, whether it's on a line of code or on the entire pull
request, with a friendly, "Hi, [author]!" It not only conveys the tone I want to
ensure, but it also puts me in the right frame of mind for whatever else I'm
going to say. Similarly, I like to end a round of review with an encouraging
comment:

* "Some styling guidance - otherwise I think all the functionality works great!"
* "I think it looks great! Some small requests below."
* "Just one small change from my end, thanks! I'll reach out to [business owner] for their final review."
* "Styling/position recommendations included, let me know if you have any questions!"

# Responsive

> Try to return personal messages as soon as possible, and set up a regular rhythm of communication for other responses.

Code reviews typically occur when a project is getting close to the finish line. To 
help your colleague maintain momentum, start your review as soon as possible once
you've volunteered or have been assigned. I'll try to give a thumbs-up or some other 
digital acknowledgement that I'm "on it," especially if it'll take some time
to work through the code.

In subsequent rounds, respond as quickly as possible to the author's questions. 
Performing a code review is as much about being available and supportive to your 
colleague as it is about the particular feedback you give.

# Inquisitiveness

> Defensiveness is reduced if people ask questions rather than make statements.

If you start with the assumption that the pull request author is the expert
in his or her code, it's easy to frame any of your potential confusion as a question
rather than a statement or criticism.

If something's not clear, or not the way you'd have done it, just ask: "Tell me more about why you chose to..."

Remember, you may not be fully aware of all the author's goals and constraints. You
may have arrived with incorrect assumptions. Collect that information before
offering critique.

# Tentativeness

> A question – framed in a tentative manner – reduces defensiveness and can also contribute valuable information

I suppose my history of programming uncertainty made this technique natural, but it turns out it's sound advice!
Angelika offers some useful phrases in her article:

* What would you think about... ?
* Have you considered... ?
* ...or did I miss something?

The only caveat I'd put on this is when someone is particularly seeking your review because of
subject-matter expertise, e.g. you're the local expert on CSS. In this situation, I sometimes
take a more direct approach, but it's still structured:

![Example code review comment](/assets/images/code_review_comment.png)

* I explain _why_ I'm giving the direction. (There's little quite so deflating as receiving prescriptive feedback with no explanation.)
* When it's a visual or interactive change, I show in a screenshot what impact the direction will have
* I offer some example code to make implementation easier

(On that last point, GitHub's new ["suggested changes" feature](https://help.github.com/en/articles/incorporating-feedback-in-your-pull-request) makes it much easier
for the author to accept your advice directly into the code.)

# Empathy

> ...put yourself in the shoes of your audience.

Fortunately, most of us who conduct code reviews also receive them, so we have _some shared sense_ of
how we react to feedback. But don't lose sight of emotional and behavioral **differences** between
team members. (Note: this is hard!) Some people like short and direct feedback, some prefer more of an explanation.
Some people like to be provided with alternatives, but value making the final decision based
on their individual assessment. Take the time to get to know the working styles of each of your
colleagues and differentiate your feedback accordingly.