require "faker"

puts "Creating Speaker List"

Speaker.create!([
  {
    name: "Aaron Patterson",
    title: "Rails Core & Senior Staff Engineer",
    bio:
      %( Aaron is on the Rails core team, the Ruby core team, and is a Senior Staff Engineer working at Shopify.
           In his free time, he enjoys cooking, playing with cats, and writing weird software.
         ).squish,
    image_filename: "a-patterson.jpg"
  },

  {
    name: "Adam Wathan",
    title: "Founder, Tailwind Labs",
    bio:
      %( Adam is a full-stack developer, entrepreneur, and the creator of Tailwind CSS.,
           He has made a career out of constantly second-guessing conventional wisdom,
           trying to get to the bottom of why we do things the way we do, and exploring if there isn't a better way.
         ).squish,
    image_filename: "a-wathan.jpg"
  },

  {
    name: "Adrianna Chang",
    title: "Senior Software Developer, Shopify",
    bio:
      %( Adrianna is a senior software engineer at Shopify, and lives in Ottawa, Ontario.
           She works on the Rails Infrastructure team, ensuring that Shopify's Rails applications scale well as the framework evolves.
           She is passionate about Ruby, open source software, and diversity and inclusion in tech. Outside of work,
           you're likely to find her spending time outside or hanging out with her dog.
         ).squish,
    image_filename: "a-chang.jpeg"
  },

  {
    name: "Alicia Rojas",
    title: "Software Engineer, Telos Labs",
    bio:
      %(Alicia is a software developer, music composer and natural resources engineer from Chile. 
        She has developed and contributed to digital products committed to social and environmental 
        impact through consultancies and participation in open-source projects. She has experience in 
        agroecology and environmental education. In her free time, she enjoys taking long walks in nature and 
        playing the bamboo flute 🎼🌻🌱
         ).squish,
    image_filename: "a-rojas.jpeg"
  },

  {
    name: "Breno Gazzola",
    title: "Co-Founder & CTO, FestaLab",
    bio:
      %{ Their majestic monolith was first built in 2018 as a Rails 5.1 app,
           but currently runs Rails Edge and they have contributed back to Rails
           some of the things they have developed for it (including the switch to “vips by default” in Rails 7).
           This monolith was also the test bed for Breno's collaboration on Propshaft and the first app to deploy it to production.
         }.squish,
    image_filename: "b-gazzola.jpg"
  },

  {
    name: "Brian Scanlan",
    title: "Senior Principal Systems Engineer, Intercom",
    bio:
      %( Brian is a Senior Principal Systems Engineer in Intercom's Dublin office. He fixes problems, builds things and grows people.
         ).squish,
    image_filename: "b-scanlan.jpeg"
  },

  {
    name: "Chris Oliver",
    title: "Founder, GoRails",
    bio:
      %( Chris is the founder of GoRails, host of the Remote Ruby podcast, and creator of Jumpstart and Hatchbox.io.
           He loves building tools to make developers' lives easier and helping people learn to code.
         ).squish,
    image_filename: "c-oliver.jpg"
  },

  {
    name: "Christian Bruckmayer",
    title: "Staff Engineer, Shopify",
    bio:
      %{ Christian Bruckmayer is originally from Nuremberg, Germany,
          although now calls the South West of England home.
          In his day job, he makes commerce better for everyone at Shopify.
          For more than a decade, he has been an avid open source contributor hacking for instance on JRuby, openSUSE Linux or various (Ruby) gems.

          If he's not hacking Ruby, he loves spending quality time with his family, including his daughter.
      }.squish,
    image_filename: "c-bruckmeyer.jpeg"
  },

  {
    name: "Cynthia Lo",
    title: "Program Manager, Github",
    bio:
      %( Cynthia is program manager with a background in project management and process improvement.
           Currently she leads the Skills-Based Volunteering program at GitHub.
          Cynthia sits on the advisory board for Mobile Pathways and CodeSavvy.
          She has experience in leading nonprofit social sector strategic planning as well as go-to-market and product launches.
      ).squish,
    image_filename: "c-lo.jpeg"
  },

  {
    name: "David Heinemeier Hansson",
    title: "Rails Core, CTO, 37signals",
    bio:
      %( Creator of Ruby on Rails. ).squish,
    image_filename: "d-hansson.jpg"
  },

  {
    name: "Donal McBreen",
    title: "Senior Programmer in the SIP team, 37signals",
    bio:
      %( Donal is a Senior Programmer in the Security, Infrastructure and Performance team at 37signals.
        ).squish,
    image_filename: "d-mcbreen.jpeg"
  },

  {
    name: "Eileen Uchitelle",
    title: "Rails Core & Senior Staff Engineer, Shopify",
    bio:
      %( Eileen M. Uchitelle is a Senior Staff Engineer at Shopify
           where she helps lead the effort to improve and maintain the Rails framework and Ruby language.
           Her approach to solving technical problems centers around ensuring the continued stability and
           extensibility for individual developers and companies large and small.
           As a member of the Rails Core Team her goal is to ensure the long-term sustainability
           of the Rails framework and its continued adoption as one of the leading open-source frameworks.
      ).squish,
    image_filename: "e-uchitelle.jpg"
  },

  {
    name: "Irina Nazarova",
    title: "CEO, Evil Martians Inc.",
    bio:
      %( Some people have a clear destiny, some don't. During the first 30 years of her life,
          Irina founded two startups, earned degrees in CS and Data Analysis, and embraced a range of occupations,
          from being a C++ engineer and investment bank research analyst to a studio photographer, product manager,
          writer, and financial consultant. Little did she know every step of her path was subtly guiding her towards
          her ultimate destiny. Now, armed with wit, passion, and a sprinkle of mischief, she proudly steers Evil Martians
          toward extraordinary achievements.
      ).squish,
    image_filename: "i-nazarova.jpeg"
  },

  {
    name: "Jason Charnes",
    title: "Staff Product Developer, Podia",
    bio:
      %( Jason Charnes is a Staff Product Developer at Podia, co-host of the Remote Ruby podcast, lover of Ruby, and a wanna-be comedian.
      ).squish,
    image_filename: "j-charnes.jpeg"
  },

  {
    name: "Jay Ohms",
    title: "Mobile Lead / Principal Programmer, 37signals",
    bio:
      %( Jay is a programmer and lead the Mobile team at 37signals.
          He has helped shape the Hotwire libraries since the early prototypes so they work well across mobile platforms.
          When not in front of a computer, he prefers to be in nature.
      ).squish,
    image_filename: "j-ohms.jpeg"
  },

  {
    name: "Jenny Shen",
    title: "Senior Developer, Shopify",
    bio:
      %( Jenny is a Senior Developer at Shopify based in Toronto, Canada.
          As a RubyGems.org maintainer, she works to help secure Ruby's dependency ecosystem
          and is passionate about open source. When she isn't at her laptop, she enjoys biking, climbing,
          jamming out to K-pop, and exploring new food spots in the city.
      ).squish,
    image_filename: "j-shen.jpeg"
  },

  {
    name: "Joe Masilotti",
    title: "Owner/Founder, Masilotti.com",
    bio:
      %( Hi! I'm Joe Masilotti, The Turbo Native guy. I help folks launch iOS apps in the App Store with Turbo Native and Ruby on Rails.

          Way back in 2016, 37signals granted me early access to the framework and I've been all-in on it ever since.
          I've launched half a dozen apps for clients to the App Store and worked with twice as many on their Turbo Native apps.

          Over these 7+ years I've learned a lot about Turbo Native. I know where it shines and where it falls short.
          And I'm excited to share everything I know with you!
      ).squish,
    image_filename: "j-masilotti.jpeg"
  },

  {
    name: "Jorge Manrubia",
    title: "Lead programmer, 37signals",
    bio:
      %( Jorge is a programmer who loves building things and messing with every part of the process.
          In love with Rails since the early days, he is the author of Active Record Encryption and is
          a regular author in the 37signals dev blog. Outside of work, he loves being a dad,
          reading a good book on the beach, writing, and planning to exercise without really exercising much.
      ).squish,
    image_filename: "j-manrubia.jpeg"
  },

  {
    name: "Julia López",
    title: "Senior Software Engineer, Harvest",
    bio:
      %( I am Julia López from Barcelona! I've been a Rails developer since 2011 and I love it.
          I am currently working as a Senior Software Engineer at Harvest where I had the chance to participate in many Rails upgrades
          - I am obsessed with upgrading things so I **never** miss those opportunities - After the conference talks,
          you can find me at the Karaoke events!
      ).squish,
    image_filename: "j-lopez.jpeg"
  },

  {
    name: "Kylie Stradley",
    title: "Senior Product Security Engineer, GitHub",
    bio:
      %( Kylie Stradley is a Product Security Engineer at GitHub, where she writes code to solve for
          classes of security vulnerabilities and paves paths for other developers to use to secure their code.
          She believes in making security tooling first and foremost easy to understand and easy to adopt.
          Outside of work Kylie enjoys gardening, winemaking, hiking and scuba diving.
      ).squish,
    image_filename: "k-stradley.jpeg"
  },

  {
    name: "Marco Roth",
    title: "Independent Consultant & Open Source Contributor, Toolsday GmbH",
    bio:
      %{ Marco is a passionate full-stack Ruby on Rails developer and a dedicated open-source contributor.
          As a member of the Hotwire and StimulusReflex contributors teams he has been pushing the limits of real-time
          server-rendered applications using the HTML-over-the-wire (Hotwire) approach. He has actively open-sourced,
          maintained, and contributed to several key libraries within the Hotwire and Ruby on Rails ecosystem.
      }.squish,
    image_filename: "m-roth.jpeg"
  },

  {
    name: "Mike Dalessio",
    title: "Director of Engineering, Shopify",
    bio:
      %{ Mike Dalessio is the Engineering Director for Shopify's Ruby and Rails Infrastructure team.
          He maintains commonly-used gems like Nokogiri, SQLite3, and Rails::HTML::Sanitizer, and has
          contributed to many more. He's a member of the Rails Triage and Rails Security teams and has
          developed a very particular set of skills around C extensions, HTML sanitization, and debugging segfaults.
          Previously he led the Cloud Foundry open source PaaS project for VMware and Pivotal.
          In 2009 he coined the phrase “WWSMD?” (IYKYK). He likes coffee, intimate chats, and long walks, and has been known to combine all three.
      }.squish,
    image_filename: "m-dalessio.jpeg"
  },

  {
    name: "Miles McGuire",
    title: "Staff Engineer, Intercom",
    bio:
      %{ I'm a Staff Engineer on Intercom's Datastores team (which owns all core technologies, including Rails)
          and have worked here for 6 years as of June 2023. In that time I've seen a lot of big and exciting changes,
          and long the way I've become Intercom's expert on ActiveRecord. In recent times I lead a project to ensure the
          long term scalability of our MySQL databases with horizontal sharding with lots of low level work at the
          application layer to make it as seamless as possible for engineers.
      }.squish,
    image_filename: "m-mcguire.jpeg"
  },

  {
    name: "Nikita Vasilevsky",
    title: "Developer, Shopify",
    bio:
      %( Nikita is a Developer at Shopify with more than 6 years of experience.
          He is an open source contributor with most of the contributions made to the Ruby on Rails framework.
      ).squish,
    image_filename: "n-vasilevsky.jpeg"
  },

  {
    name: "Peter Zhu",
    title: "Senior Developer, Shopify",
    bio:
      %( Peter is a Ruby core committer and Senior Developer at Shopify. He is currently working on improving
          the performance of Ruby through projects such as Variable Width Allocation. He is the author of ruby_memcheck,
          a gem used to find memory leaks in native gems. It has found memory leaks in popular gems such as Nokogiri, protobuf,
          gRPC, liquid-c, and YARP.
      ).squish,
    image_filename: "p-zhu.jpeg"
  },

  {
    name: "Ryan Singer",
    title: "Owner, Felt Presence",
    bio:
      %( Ryan has worked on all levels of the software stack, from UI design to programming to strategy.
          Over 17 years at 37signals, he designed features used by millions and eventually became Head of Strategy.
          He is the author of Shape Up. In 2021, he founded Felt Presence to help product teams stop running in circles
          and regain the thrill of building.
      ).squish,
    image_filename: "r-singer.jpg"
  },

  {
    name: "Sean Marcia",
    title: "Founder, Ruby for Good",
    bio:
      %( Sean Marcia, pronouns he, him, his, founded Ruby for Good in 2013 to fill the gap created by inaccessible
          and uneconomical technology solutions for nonprofits. He built an inclusive community of gooders—technologists
          determined to make the world a better place—who build open source, technology solutions for individuals and nonprofits
          serving vital missions. Sean is a passionate zymurgist, avid coffee roaster, enthusiastic writer of screenplays, and
          connoisseur of practical jokes.
      ).squish,
    image_filename: "s-marcia.jpeg"
  },

  {
    name: "Vladimir Dementyev",
    title: "Cable Engineer, Evil Martians Inc.",
    bio:
      %( Vladimir is a mathematician who found his happiness in programming Ruby and Erlang,
          contributing to open source and being an Evil Martian. Author of AnyCable, TestProf,
          Action Policy and many yet unknown ukulele melodies.
      ).squish,
    image_filename: "v-dementyev.jpeg"
  },

  {
    name: "Xavier Noria",
    title: "Rails Core, Independent Consultant",
    bio:
      %( Everlasting student · Zeitwerk · Rails Core · Fukuoka Ruby Award · Ruby Hero Award · Freelance · Life lover
      ).squish,
    image_filename: "x-noria.jpeg"
  },

  {
    name: "Yaroslav Shmarov",
    title: "Owner, SupeRails",
    bio:
      %( I l-o-v-e sharing my learnings in order to empower others in their journey.

          I've published 5 best-selling top-rated Udemy courses, with over 5000 student enrolments so far.
          My courses are beginner-friendly code-alongs, where you get to build a complete app from ZERO.

          I created the SupeRails youtube channel about Ruby on Rails with 150+ screencasts. In my videos
          I try to explain concepts in minutes, that otherwise would have taken days or weeks to learn.
          The goal is for you to learn 10x faster than it took me!

          I write a “dev log” blog, where I document the most interesting, most challenging daily programming
          challenges I overcome at work. I think that writing a “dev log” and documenting learnings helps with
          structuring knowledge. It helped me become 10x dev vs who I was.

          When Hotwire was released, I worked at a startup using Rails, GraphQL and React. We were early adopters
           of Hotwire, and we completely rewrote our app into a Rails monolith with server-side rendering with Hotwire
            & ViewComponent for the design system. The frontend had complex UI interactions that were previously done with
             React, so I had the opportunity to solve complex problems with Hotwire, Kredis, ViewComponent, StimulusJS, RequestJS.
              Since then I have worked as a “Frontend owner” with different companies, where my role was to create complex UI's with Hotwire.
               While working with this technology, I identified multiple common-use patterns and best practices, that I want to share!

          BTW, I never got a CS degree. I am self-taught! Initially I tried out Ruby on Rails, because I needed a “School Management app”
          for my business. I did not find a good one on the market, so I decided to build one. With no prior experience, Rails was very fast
            to learn. I was amazed by scaffolds, associations, devise and Heroku - it's all I really needed to worry about when building my app!
            That's what I call Rails magic - being able to jump in and build something that provides business value with minimal experience!
      ).squish,
    image_filename: "y-shmarov.jpg"
  }
])

puts "Finished creating speakers"

puts "Creating talks list"

  Talk.create!([
    {
      title: "Early Registration",
      location: "Beurs van Berlage",
      start_time: Time.zone.parse("2023-10-04 16:00:00"),
      talk_format: "social",
      duration: 180,
      description: 
      %(Registration opens for those who are in town early. 
        Avoid the Thursday morning line and get your badge early.
      ).squish
    },

    {
      title: "Sponsored Drinks",
      location: "TBD",
      start_time: Time.zone.parse("2023-10-04 17:00:00"),
      talk_format: "social",
      duration: 180,
      description: 
      %(Pre-event drinks sponsored by Jeroen Nijhof. The location of these drinks 
        will be shared with registered attendees. Badge required.
      ).squish
    }, 

    {
      title: "Doors Open",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-05 09:00:00"),
      talk_format: "social",
      duration: 60,
      description: 
      %(Rails World attendees are welcome to register, enter, and get breakfast before the keynote begins.
      ).squish
    }, 

    {
      title: "Opening Keynote",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 10:00:00"),
      talk_format: "keynote",
      duration: 60,
      description: 
      %(Opening Keynote
      ).squish
    }, 

    {
      title: "Strada: Bridging the Web and Native Worlds",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 11:00:00"),
      talk_format: "talk",
      duration: 40,
      description: 
      %(Strada is the missing library to take your Turbo Native apps to the next level. 
        Turbo Native enables web developers to ship native apps, but the experience is limited to 
        a WebView container within a native shell. The native app doesn't have any knowledge about 
        the web content that is being rendered, but Strada bridges that gap.

        As part of the Hotwire family, Strada leverages the HTML you already have to enable high-fidelity 
        native interactions on iOS and Android that are driven by your web app.
      ).squish
    }, 

    {
      title: "SolidCache: A Disk Backed Rails Cache",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 11:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(A disk cache can hold much more data than a memory one. But is it fast enough?

        We built SolidCache, a database cache, to test this out. Running in production on hey.com, 
        we now cache months' rather than days' of data. 
        
        The result: emails are 40% faster to display and it costs less to run.
      ).squish
    },

    {
      title: "Making a Difference with Turbo",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 11:45:00"),
      talk_format: "talk",
      duration: 40,
      description: 
      %(At 37signals, we're working on a new product with some special needs regarding UI interactivity and fidelity.

        Based on the previous experience with HEY - the product that helped shape Hotwire itself – and the new app's 
        particular needs, we developed a little Turbo addition that we believe can make a big difference for everyone.
        
        In this talk, we'll present the problem we are solving, where we are coming from, and where we landed. 
        We'll put an accent on how developer happiness and productivity play a crucial role in our decision process.
      ).squish
    }, 

    {
      title: "Everything We Learned While Implementing ActiveRecord::Encryption",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 11:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(GitHub encrypts your data at rest, as well as specific sensitive database columns. 
        What you may not know is we recently replaced our in-house db column encryption strategy with 
        ActiveRecord::Encryption, in place. While we were able to complete this transition seamlessly for 
        GitHub's developers, the process was not quite seamless for our team and some of our customers

        Learn why despite making mistakes we feel the migration was worth it to our team, 
        GitHub developers and most importantly, GitHub customers.
      ).squish
    }, 

    {
      title: "Lunch",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-05 12:30:00"),
      talk_format: "social",
      duration: 60,
      description: "" 
    },

    {
      title: "The Future of Rails as a Full-stack Framework Powered by Hotwire",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 13:30:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Hotwire has revolutionized the way we build interactive web applications using Ruby on Rails. 
        Join us for an insightful session that explores the future of Hotwire and its role in shaping Ruby on Rails 
        as a powerful Full-Stack framework.

        We will take an in-depth look at the recent advancements in Hotwire and provide practical demonstrations, 
        implementation insights, useful tools, and guidance on effectively utilizing Stimulus, Turbo and related frameworks.
        
        Marco, the maintainer of Stimulus, StimulusReflex and CableReady, shares his passion for Hotwire and his vision 
        for its advancement. Gain clarity on Hotwire's purpose, its roadmap, and the exciting possibilities it presents 
          for building advanced, reactive applications. Marco will discuss ideas and concepts, eliminating confusion and 
            promoting cohesion within the Hotwire ecosystem.
        
        Join us to embark on a journey toward a more powerful, unified Hotwire ecosystem, and learn how Ruby on Rails 
        can flourish as a full-stack framework.
      ).squish
    },

    {
      title: "Migrating Shopify's Core Rails Monolith to Trilogy",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 13:30:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Trilogy is a client library for MySQL-compatible database servers. 
        It was open sourced along with an Active Record adapter by GitHub this past year. 
        With promises of improved performance, better portability and compatibility, and fewer dependencies, 
        Shopify's Rails Infrastructure team decided to migrate our core Rails monolith from Mysql2 to Trilogy.

        In this talk, we'll explore why the Trilogy client was built and why Shopify wanted to adopt it. 
        We'll learn a bit about MySQL protocols and look at some of the missing features we implemented in 
        order to migrate Shopify to Trilogy. Finally, we'll discuss the impact of migrating on Shopify's 
        production monolith, and look at the process of upstreaming the adapter to rails/rails.
      ).squish
    }, 

    {
      title: "Test Smarter, Not Harder: Crafting a Test Selection Framework from Scratch",
      location: "Workshop Hall",
      start_time: Time.zone.parse("2023-10-05 13:30:00"),
      talk_format: "workshop",
      duration: 60,
      description: 
      %(The simplest way of running tests is to run all of them, regardless of what changes you are testing. 
        However, depending on the size of your test suite, this will either get slow or expensive. 
        At Shopify we have almost 300,000 Rails tests and we add 50,000 more annually. The sheer amount of tests 
        and their growth makes it impossible to run all tests, all the time! Hence we implemented a framework to 
        only run tests relevant to your code changes.

        We will build a test selection framework from scratch in this workshop. We will begin by exploring the 
          fundamentals of such a framework: code analysis. After that we will dive into minitest reporters, 
          how they work and how we can use them to generate a test map. Finally we will use the generated 
          test map to only run tests relevant to your code changes. Attendees will walk away with a solid 
          understanding of what test selection is, how it works and how to implement it.
      ).squish
    },

    {
      title: "Building an Offline Experience with a Rails-powered PWA",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 14:15:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Rails applications can be easily enhanced with PWA (Progressive Web Applications) functionalities 
      thanks to the latest changes on the way the client-side is managed. This creates a great opportunity 
      to reach non-conventional audiences (i.e.: people that lack a stable internet connection), and generate 
      a positive impact in their lives with creative solutions.

      In this session, you will learn how to turn your regular Rails application into a PWA, 
      allowing it to provide functionality under different network conditions. Most code samples belong to 
      a case study of an application conceived for rural people living in areas lacking stable internet access, 
      such as farmers and agricultural technicians. We will cover exciting stuff such as caching and providing 
      an offline fallback, how to make your app installable, and performing offline CRUD actions with IndexedDB and Hotwire.
      
      Outline:
      
      What is a PWA and why they're great / why should I turn my Rails app into a PWA
      Step-by-step guide to set up the main pieces of software required for PWAs: how to set up service worker and 
      manifest sticking to the MVC pattern.
      How to cache key assets and pages, and provide an offline fallback.
      Outline of steps for allowing the app to perform CRUD actions and synchronization using Hotwire and IndexedDB:
      Create records, save them on indexedDB, and sync them later, either manually or automatically.
      Read and update records that have not been synced.
      Key takeaways and further opportunities.
      Expected outcomes:
      
      Basic and practical knowledge about how to turn a Rails app into a PWA using the MVC pattern and Hotwire.
      To become more aware of potential non-conventional audiences for our apps and their challenges.
      Intended audience: Software developers (all levels welcome!), front-end and back-end developers, 
      project/company leads, and product designers.
      ).squish
    }, 

    {
      title: "Guardrails: Keeping Customer Data Separate in a Multi Tenant System",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 14:15:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Many companies are built upon a multitenant architecture. This means that all customers 
        share the same storage and computing resources: databases, caches, search engines, etc. 
        An individual workspace's data is isolated and made invisible to others at runtime. 
        This is achieved by using logical safeguards, the most common being: query time filtering using a 
        customers's unique ID.

        Engineers are human, and most engineers are not security experts. This means that sometimes these 
        logical safeguards are implemented incorrectly or they become incorrect after a large architectural change.
        
        We have solved this problem by weaving the customer id into all inline and async work and 
        introducing a middleware that raises an exception of work is attempted outside of that customers workspace. 
        I will talk about how we achieved this and the lessons learned, as well as touching on additional benefits 
        we unlocked along the way.
      ).squish
    },

    {
      title: "AI Driven Development",
      location: "Workshop Hall",
      start_time: Time.zone.parse("2023-10-05 14:45:00"),
      talk_format: "workshop",
      duration: 90,
      description: 
      %(Presented by Cynthia Lo and Sean Marcia. This workshop will be given once per day.

        Are you intrigued by all the chatter around AI-powered tools like ChatGPT and CoPilot? 
        Then our workshop is the perfect place for you to learn and understand these tools hands-on. 
        We'll walk through practical applications of these tools and you'll be using them to add features, tests, 
        and fix bugs in a real-world application - no contrived demos here!
        
        Don't forget to bring your laptop to this workshop, as there is no better way to learn than by doing. 
        And you'll definitely be doing!
        
        Note: Registration for this workshop will open in September, and space is limited.
        
        To participate, advance registration and setup is required. Workshop attendees will be invited to a 
        GitHub repo and given free access to Copilot for this workshop. Before the workshop begins, you will need 
        to install vscode and the correct versions of Ruby, Rails, and other various gems. The workshop presenters 
        will send all registered attendees instructions before Rails World.
      ).squish
    },

    {
      title: "Implementing Native Composite Primary Key Support in Rails 7.1",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 15:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Get ready to dive into the world of composite primary keys with the upcoming Rails 7.1 release! 
        This talk will provide a thorough understanding of composite primary keys, the significance of the 
        “ID” concept in Rails, and the crucial role of the “query constraints” feature in making this powerful 
        feature work seamlessly.

        We'll cover the following topics:
        
        The fundamentals of composite primary keys from the database schema perspective
        What composite primary keys and tenant-based sharding have in common.
        The advantages of using composite primary keys in multi-tenant applications, including performance gains and 
        security improvements.
        Real-world scenarios where composite primary keys can be beneficial, along with benchmark comparisons to 
        demonstrate their performance impact.
        A developer-friendly abstraction to illustrate how data is stored on disk and where performance gains originate.
        The trade-offs to consider when adopting composite primary keys and the support provided by Active Record for 
        implementing them in Rails web applications.
      ).squish
    },

    {
      title: "Zeitwerk Internals",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 15:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Zeitwerk is the Ruby gem responsible for autoloading code in modern Rails applications.

        After attending this talk you'll have a good understanding of how Zeitwerk works. 
        Going from a conceptual overview of the main ideas, down to implementation details and interface design.
        
        While this is an advanced talk, you only need to know what is a constant in Ruby. We'll introduce 
        the necessary preliminary concepts to make it accessible. This is geared towards both seasoned Ruby developers 
        looking to have a deep understanding of Zeitwerk, as well as Rails beginners curious to know how this aspect 
        of Rails works.
      ).squish
    },

    {
      title: "Using Multiple Databases with Active Record",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 15:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(As your application grows in usage, there are different things you might need to consider 
      when scaling your database. In this talk, we will briefly introduce some of the reasons why 
        having multiple databases makes sense and how Rails is helping us set our applications so they 
        can read from those. In order to demonstrate that, we'll show how we are using and extending the support 
        for multiple databases provided by Rails.
      ).squish
    },

    {
      title: "Propshaft and the Modern Asset Pipeline",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-05 15:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Rails 7 brought with it an overhauled asset pipeline that delivered a default “no-Node” approach to front end 
        and improved support for modern bundlers like esbuild.

        This is great for developers as we are constantly searching for ways to make the development process more pleasant 
        and to deliver better user experiences.
        
        However, the introduction of multiple gems that seem to have overlapping features has left many of you confused about 
        how to take advantage of everything that Rails 7 has to offer.
        
        You want to make sure that when you create your next app, or update an existing one, you are making the correct choice 
        and will not have to go back and redo a large part of your frontend.
        
        I'm a contributor to some of these gems and deployed most of them to production and I can tell you it's actually simpler 
        than it looks. It all comes down to a single decision.
        
        But to make that decision we have to understand what makes the new asset pipeline so different from the previous one.
      ).squish
    },

    {
      title: "Day 1 Closing Keynote - The Magic of Rails",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-05 16:30:00"),
      talk_format: "keynote",
      duration: 30,
      description: 
      %(Today we're going to explore the magic of Rails. We'll look at the philosophy behind the framework as well 
        as the overall structure of the components. We'll explore some of the common patterns that Rails uses to build 
        agnostic and beautiful interfaces, and the techniques it implements to hide complexity so you can focus on building 
        your application. By the end of this talk you'll feel more confident navigating the Rails codebase and better understand 
        the patterns it uses to create the framework we all know and love. But Rails is so much more than its design and 
        architecture. We'll dive into my motivations for working on the framework and why the community is so important 
        to the long term success of Rails.
      ).squish
    },

    {
      title: "Day 1 Happy Hour",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-05 17:00:00"),
      talk_format: "social",
      duration: 60,
      description: 
      %(Join us as we close out day 1 with some light drinks in the Sponsor Lounge.
      ).squish
    },

    {
      title: "Doors Open",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-06 09:00:00"),
      talk_format: "social",
      duration: 60,
      description: 
      %(Rails World attendees are welcome to register, enter, and get breakfast before the keynote begins.
      ).squish
    },

    {
      title: "Future of Developer Acceleration with Rails",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 10:00:00"),
      talk_format: "keynote",
      duration: 60,
      description: 
      %(What would development be like if Rails had tight integration with Language Servers? 
        In this presentation we'll look at how language servers work, how we can improve language server support in Rails, 
        and how this will increase our productivity as Rails developers. We'll dive in to the implementation details 
        of a language server, what needs to be done in Rails to support language servers, and how we as Rails developers 
        can make better use of LSPs to boost our productivity.
      ).squish
    },

    {
      title: "Powerful Rails Features You Might Not Know",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 11:00:00"),
      talk_format: "talk",
      duration: 40,
      description: 
      %(An unbelievable amount of features are packed into Rails making it one of the most powerful web frameworks you can use. 
        So let's take a look at some little known, underused, and new things in Rails 7.

        A few of the topics we'll cover:
        
        ActiveRecord features like “excluding”, strict_loading, virtual columns, with_options, attr_readonly, etc
        ActiveStorage named variants
        ActionText embedding any database record
        Saving ActionMailbox inbound emails in ActionText
        Routing constraints like the “(un)authenticated” helpers in Devise
        Overriding generator templates like scaffolds to add your own features
        Custom Turbo Stream Actions with Hotwire
        Turbo Native authentication with your Rails backend
        ActiveSupport features like truncate_words
        Rails 7.1's new features: authentication, normalizes, logging background enqueue callers, and more.
      ).squish
    },

    {
      title: "Rails and the Ruby Garbage Collector: How to Speed Up Your Rails App",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 11:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(The Ruby garbage collector is a highly configurable component of Ruby. However, it's a black box to most Rails developers. 
        In this talk, we'll look at:

        - How Ruby's garbage collector works
        - The various ways to collect garbage collector metrics, analyze the data, and apply optimizations and configurations
        - How we sped up Shopify's highest traffic app, Storefront Renderer, by 13%
        - Improvements we made in Ruby 3.3 to automatically make Rails apps faster for everyone
      ).squish
    },

    {
      title: "Rails::HTML5: the Strange and Remarkable Three-Year Journey",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 11:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Rails 7.1 improved Rails's security posture and made Rails more friendly with modern browsers by shipping 
        HTML5-compliant sanitizers by default.

        This is the story of planning and executing a complex migration task on a major open-source project, 
        a multi-year journey that started in 2015 with a security vulnerability and ended after coordinating major 
        changes to Action View, Rails::HTML::Sanitizer, Loofah, and Nokogiri, and taking over maintenance of libgumbo.
        
        Along the way two active open-source projects merged, an entire class of XSS vulnerabilities was rendered inert, 
        and I came to admire the unlikely brilliance of the HTML5 parser specification.
      ).squish
    },

    {
      title: "Demystifying the Ruby Package Ecosystem",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 11:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(RubyGems is the Ruby community's go to package manager. It hosts over 175 thousand gems - 
        one of which is Rails and others that we use to customize our applications. RubyGems and Bundler 
        does an excellent job in removing the complexities of gem resolution and installation so developers 
        can focus on building great software.

        In this talk, we'll be taking a look at the inner workings of the Ruby package ecosystem. This includes:
        
        - The processes involved in installing gems from a Gemfile
        - Insights into debugging gems within a Rails application
        - Ensuring you're selecting the right gems to avoid security risks
      ).squish
    },

    {
      title: "Lunch",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-06 12:30:00"),
      talk_format: "social",
      duration: 60,
      description: ""
    },

    {
      title: "Just Enough Turbo Native to Be Dangerous",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 13:30:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Turbo Native gives Rails developers superpowers. It enables us to launch low maintenance but high-fidelity 
        hybrid apps across multiple platforms. All while keeping the core business logic where it matters - 
        in the Ruby code running on the server.

        The framework renders your existing mobile web HTML inside of a native “shell.” But getting started isn't easy. 
        You still have to write some native Swift code in Xcode. And there isn't much documentation available about the 
        right way to do things.
        
        During this talk I'll walk you through all of that. You'll learn how to build a Turbo Native iOS app 
        from scratch along with the benefits and pain points that come with it. We'll dive into ways to make the app 
        feel more native, how to handle authentication, and how to integrate with native Swift SDKs.
      ).squish
    },

    {
      title: "Applying Shape Up in the Real World",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 13:30:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Teams everywhere are tired of scrum and curious about Shape Up. But very few of them are able to apply it by-the-book. 
        That's because most companies aren't structured like 37signals, the makers of Basecamp, where Shape Up was created. 
        They aren't self-funded, with a close-knit team of senior programmers and plenty of designers who code.

        That hasn't reduced the demand. People understand that estimating story points and writing better tickets isn't going to 
        solve their problems. There are disconnects between the vision of what to do and what actually gets built. Building takes 
          longer than expected and scope gets out of control. Programmers are treated like ticket-takers when what they really want 
          is to see the whole problem and creatively solve it.
        
        Over the last couple years, Ryan has worked with a wider variety of companies with very different structures — 
        teams with big gaps between junior and senior, where programmers far out-number designers, and where external 
        pressures make six-week cycles out of the question. The result is new language, new techniques, and some broken rules, 
        that will help you apply Shape Up in a way that's custom-fit to your team.
      ).squish
    },

    {
      title: "AI Driven Development",
      location: "Workshop Hall",
      start_time: Time.zone.parse("2023-10-06 13:30:00"),
      talk_format: "workshop",
      duration: 90,
      description: 
      %(Presented by Cynthia Lo and Sean Marcia. This workshop will be given once per day.

        Are you intrigued by all the chatter around AI-powered tools like ChatGPT and CoPilot? Then our workshop is the 
        perfect place for you to learn and understand these tools hands-on. We'll walk through practical applications of 
        these tools and you'll be using them to add features, tests, and fix bugs in a real-world application - no contrived 
        demos here!
        
        Don't forget to bring your laptop to this workshop, as there is no better way to learn than by doing. And you'll 
        definitely be doing!
        
        Note: Registration for this workshop will open in September, and space is limited.
        
        To participate, advance registration and setup is required. Workshop attendees will be invited to a GitHub repo 
        and given free access to Copilot for this workshop. Before the workshop begins, you will need to install vscode 
        and the correct versions of Ruby, Rails, and other various gems. The workshop presenters will send all registered 
        attendees instructions before Rails World.
      ).squish
    },

    {
      title: "Untangling Cables and Demystifying Twisted Transistors",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 14:15:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(More and more Rails applications adopt real-time features, and it's not surprising—Action Cable and Hotwire brought 
        development experience to the next level regarding dealing with WebSockets. You need zero knowledge of the 
        underlying tech to start crafting a new masterpiece of web art! However, you will need this knowledge later to 
        deal with ever-sophisticated feature requirements and security and scalability concerns.

        The variety of questions that arise when developers work with Rails' real-time tooling is broad, from 
        “Which delivery guarantees does Action Cable provide?” to “Can I scale my Hotwire application to handle dozens 
        of thousands of concurrent users?”. To answer them, we need to learn our tools first.
        
        In my talk, I will help you better to understand Rails' real-time component—Action Cable. I want to open 
        this black box for you and sort through the internals so you can work with Action Cable efficiently and confidently.
      ).squish
    },

    {
      title: "Tailwind CSS: It looks awful, and it works.",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 14:15:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(We've always been told that the right way to style our sites is to keep presentational details out of our markup, 
        and safely encapsulate them in our stylesheets instead. But if this is the right way to build websites, why are our 
        stylesheets always the first thing to spiral out of control into an unmaintainable 800kb mess that everyone on the team 
        is afraid to change?

        In this talk, you'll learn why “separation of concerns” isn't the right way to think about the relationship between 
        HTML and CSS, why presentational class names lead to code that's so much easier to maintain, as well as loads of tips, 
        tricks, and best practices for getting the most out of Tailwind CSS, directly from the creator himself.
      ).squish
    },

    {
      title: "Hotwire Cookbook: Common Use Cases, Essential Patterns and Best Practices",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 15:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(During the talk we will:
        - See a list of most common frontend problems that can be solved with Hotwire 
          (pagination, search and filtering, modals, live updates, dynamic forms, drag & drop, live previews, 
          lazy loading & more), and the code overview required to achieve these behaviours;
        - Overview of the large ecosystem of Hotwire tools (turbo streams, turbo frames, StimulusJS, kredis, RequestJS, 
          Turbo Power, Stimulus Use, Stimulus Components, Cubism & more), when to use and how to combine these tools; 
        - What are the limits of Hotwire?
        - How to write readable and maintainable Hotwire code?
        
        By the end of the talk you will have an understanding of the range of problems that Hotwire and it's ecosystem 
        can solve to deliver a seamless frontend experience.
      ).squish
    },

    {
      title: "Wildest Dreams of Making Profit on Open Source",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 15:00:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Open source is amazing - for decades, it's been the driver of tech industry creativity and growth. 
        But as long as our food, devices, and homes are not similarly open and free, this creativity needs to be 
        rewarded monetarily, too.

        Commercialized open source has effectively supported authors while also maintaining the benefits that open 
        principles have on the industry. By obtaining an adequate share of the value we create, we'll be able to work 
        on industry-changing projects we're passionate about for years to come.
        
        Yet, achieving success in this domain is not without its challenges. We must be willing to learn, experiment, 
        and overcome obstacles along the way. In this talk, I will unveil my insights on navigating this journey, 
        harnessing the power of Rails at every stage.
      ).squish
    },

    {
      title: "Don't Call It a Comeback",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 15:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Ruby on Rails was the hottest technology web development had ever seen. It became a staple technology for web developers. 

        But things changed.
        
        Single-page web applications and microservices became the standard. Server-rendered monoliths were out of style; 
        Rails was out of style. 
        
        The community persisted, but the excitement was missing. We put our heads down and continued to build applications 
          using the tools and technology we love. We continued doing so while people mocked Rails for being slow and dead.
        
        Eventually, the tide turned- and Rails excited developers again. Today, people are excited to build new applications 
        with Ruby on Rails.
        
        Let's celebrate the resurgence and explore how we can contribute to the movement.
      ).squish
    },

    {
      title: "Monolith-ifying Perfectly Good Microservices",
      location: "Track 2",
      start_time: Time.zone.parse("2023-10-06 15:45:00"),
      talk_format: "talk",
      duration: 30,
      description: 
      %(Intercom mostly runs on a majestic Ruby on Rails monolith, however we also have a bunch of standalone services 
        that serve some critical important customer facing functionality. Over the last few years we have replaced a number 
        of these services through re-implementing them back inside our Rails monolith. This talk will cover the reasons 
        why these services existed in the first place, why we felt the need to move them into our monolith, whether the moves 
        back into the monolith were successful and what we learned along the way. 
        Oh and which parts of Ruby on Rails helped or hindered us too!
      ).squish
    },

    {
      title: "Day 2 Closing Session - TBD",
      location: "Track 1",
      start_time: Time.zone.parse("2023-10-06 16:30:00"),
      talk_format: "keynote",
      duration: 45,
      description: 
      %(More information to follow.
      ).squish
    },

    {
      title: "Rails 20th Anniversary Celebration",
      location: "Sponsor Lounge",
      start_time: Time.zone.parse("2023-10-06 17:15:00"),
      talk_format: "social",
      duration: 135,
      description: 
      %(Join us for the closing party of the first edition of Rails World. Let's celebrate the first 20 years of Ruby on Rails, 
        and look into the future at the next 20 years and beyond.
      ).squish
    }
    ])

puts "Finished creating talks"

puts "Creating speakers_talks relationships"

  SpeakerTalk.create!([
    {
      speaker_id: 1,
      talk_id: 23
    },

    {
      speaker_id: 2,
      talk_id: 33
    },

    {
      speaker_id: 3,
      talk_id: 11
    },

    {
      speaker_id: 4,
      talk_id: 13
    },

    {
      speaker_id: 5,
      talk_id: 19
    },

    {
      speaker_id: 6,
      talk_id: 37
    },

    {
      speaker_id: 7,
      talk_id: 24
    },

    {
      speaker_id: 8,
      talk_id: 12
    },

    {
      speaker_id: 9,
      talk_id: 15
    },

    {
      speaker_id: 9,
      talk_id: 31
    },

    {
      speaker_id: 10,
      talk_id: 4
    },

    {
      speaker_id: 11,
      talk_id: 6
    },

    {
      speaker_id: 12,
      talk_id: 20
    },

    {
      speaker_id: 13,
      talk_id: 35
    },

    {
      speaker_id: 14,
      talk_id: 36
    },

    {
      speaker_id: 15,
      talk_id: 5
    },

    {
      speaker_id: 16,
      talk_id: 27
    },

    {
      speaker_id: 17,
      talk_id: 29
    },

    {
      speaker_id: 18,
      talk_id: 7
    },

    {
      speaker_id: 19,
      talk_id: 18
    },

    {
      speaker_id: 20,
      talk_id: 8
    },

    {
      speaker_id: 21,
      talk_id: 10
    },

    {
      speaker_id: 22,
      talk_id: 26
    },

    {
      speaker_id: 23,
      talk_id: 14
    },

    {
      speaker_id: 24,
      talk_id: 16
    },

    {
      speaker_id: 25,
      talk_id: 25
    },

    {
      speaker_id: 26,
      talk_id: 30
    },

    {
      speaker_id: 27,
      talk_id: 15
    },

    {
      speaker_id: 27,
      talk_id: 31
    },

    {
      speaker_id: 28,
      talk_id: 32
    },

    {
      speaker_id: 29,
      talk_id: 17
    },

    {
      speaker_id: 30,
      talk_id: 34
    }

    ])



puts "Finished creating speakers_talks relationships"

puts "Creating Admin User"

User.create!(
  email: "admin@railsworld.com",
  password: "123456789",
  role: 1
)
puts "Admin user created!"

puts "Creating Attendee User"

User.create!(
  email: "user@railsworld.com",
  password: "123456789",
  role: 0
)
puts "Attendee Created!"
