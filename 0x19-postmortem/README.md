# Post-Mortem 

## Issue Summary:

This is the thrilling saga of the Apache server misconfiguration that rocked our digital world from March 10th, 2:00 AM to March 10th, 4:30 AM (UTC). Picture this: users frantically trying to log in, met with the dreaded HTTP 500 error, akin to hitting a brick wall in the digital highway. Approximately 30% of users found themselves stranded in login limbo, wondering if they'd ever regain access to their beloved accounts. The culprit? A misconfiguration in our trusty Apache server, turning our website into a digital labyrinth of confusion.

## Timeline:

- **2:00 AM (UTC):** Our adventure begins with a sudden surge in internal server errors, detected by our vigilant automated monitoring systems. Little did we know, a storm was brewing in the digital skies.
- **2:05 AM:** Engineers sprang into action like knights on a quest, armed with alerts and determination to vanquish the impending doom.
- **2:15 AM:** Our brave engineers delved into the depths of server logs and configuration files, hoping to uncover the elusive source of our troubles.
- **2:30 AM:** A breakthrough! Engineers stumbled upon a trail of failed requests, leading them to suspect a mischievous misconfiguration lurking within our Apache fortress.
- **3:00 AM:** Alas, our heroes took a wrong turn on the path of investigation, initially blaming recent software updates for the chaos. Oh, the folly of haste!
- **3:45 AM:** With resolve undeterred, our engineers sought aid from the wise sages of the systems administration team, hoping for enlightenment in our darkest hour.
- **4:15 AM:** Eureka! The root cause revealed itself—a misconfiguration in the Apache server's PHP extensions, a digital dragon hiding in plain sight.
- **4:30 AM:** Victory was ours! With the misconfiguration banished and the Apache server reborn, our website emerged from the shadows, ready to welcome users once more.

## Root Cause and Resolution:

In the heart of our Apache fortress lay the root cause of our woes: a misconfiguration in the PHP extensions. But fear not, for our valiant engineers wielded their Puppet magic, updating the configuration with precision and grace. The `0-strace_is_your_friend.pp` Puppet manifest was our trusty sword, automating the fix and restoring order to our digital realm.

## Corrective and Preventative Measures:

But our adventure does not end here! To fortify our defenses against future misconfigurations, we embark on a quest for improvement:
- Strengthening our configuration management processes, turning chaos into order with the wave of a digital wand.
- Enhancing our monitoring capabilities, keeping vigilant watch over our digital kingdom to thwart any lurking threats.
- Updating the Puppet manifest to include correct PHP extensions configuration, ensuring our Apache fortress remains impenetrable.
- Conducting a thorough review of Apache server configurations, seeking out hidden vulnerabilities like treasure in the digital sands.

In conclusion, dear reader, our Apache adventure serves as a testament to the resilience of our digital kingdom. Through collaboration, determination, and perhaps a touch of magic, we triumphed over adversity and emerged stronger than ever before. So, let us raise our virtual banners high and march forth into the future, ready to face whatever challenges may come our way!
