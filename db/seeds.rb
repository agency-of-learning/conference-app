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
      %( I am Julia López from Barcelona! I’ve been a Rails developer since 2011 and I love it.
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
      %{ Mike Dalessio is the Engineering Director for Shopify’s Ruby and Rails Infrastructure team.
          He maintains commonly-used gems like Nokogiri, SQLite3, and Rails::HTML::Sanitizer, and has
          contributed to many more. He’s a member of the Rails Triage and Rails Security teams and has
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
      %{ I’m a Staff Engineer on Intercom’s Datastores team (which owns all core technologies, including Rails)
          and have worked here for 6 years as of June 2023. In that time I’ve seen a lot of big and exciting changes,
          and long the way I’ve become Intercom’s expert on ActiveRecord. In recent times I lead a project to ensure the
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
              Since then I have worked as a “Frontend owner” with different companies, where my role was to create complex UI’s with Hotwire.
               While working with this technology, I identified multiple common-use patterns and best practices, that I want to share!

          BTW, I never got a CS degree. I am self-taught! Initially I tried out Ruby on Rails, because I needed a “School Management app”
          for my business. I did not find a good one on the market, so I decided to build one. With no prior experience, Rails was very fast
            to learn. I was amazed by scaffolds, associations, devise and Heroku - it’s all I really needed to worry about when building my app!
            That’s what I call Rails magic - being able to jump in and build something that provides business value with minimal experience!
      ).squish,
    image_filename: "x-noria.jpeg"
  }
])

puts "Finished creating speakers"

puts "Creating 25 talks"

29.times {
  Talk.create!(
    title: Faker::Book.unique.title,
    location: Faker::Address.community,
    start_time: Faker::Time.between_dates(from: Date.new(2023, 10, 0o5), to: Date.new(2023, 10, 0o6), period: :morning),
    talk_format: %w[keynote session workshop panel social].sample,
    talk_track: %w[technical community career].sample,
    duration: [30, 45, 60].sample,
    description: Faker::Movies::Hobbit.quote
  )
}
puts "Finished creating talks"

puts "Creating 25 speakers_talks relationships"

29.times {
  SpeakerTalk.create!(
    speaker_id: Speaker.ids.sample,
    talk_id: Talk.ids.sample
  )
}
puts "Finished creating speakers_talks relationships"

puts "Creating Admin User"

User.create!(
  email: "admin@example.com",
  password: "123456789",
  role: 1
)
puts "Admin user created!"
