alias Praliedutzel.{Repo, Experience}

experiences = [
  %{
    title: "Senior Front-End Web Designer",
    company: "Joydrive",
    timeframe: "2020 - 2024",
    description: "In this hybrid role, I did both design and front-end development for an online automotive marketplace and dealer-focused management tools."
  },
  %{
    title: "Design Technologist",
    company: "Vrbo",
    timeframe: "2018 - 2020",
    description: "I worked at the intersection between design and development for internal-facing products aimed at improving the workflows of property owner support specialists."
  },
  %{
    title: "Freelance Designer & Developer",
    company: "Creative Anchor",
    timeframe: "2013 - 2023",
    description: "As a freelancer, I’ve worked with a number of clients to design and develop custom websites, HTML emails, and complex user experiences."
  },
  %{
    title: "Senior Front-End Developer",
    company: "BIG YAM",
    timeframe: "2017 - 2018",
    description: "While at the Parsons advertising agency, I led all front-end and email development projects for a number of clients including PXG and the Bob & Renee Parsons Foundation."
  },
  %{
    title: "Web Developer",
    company: "BIG YAM",
    timeframe: "2014 - 2017",
    description: "Prior to my promotion, I worked as a web developer with a focus on CSS and JavaScript, and learned PHP and WordPress to better support our back-end developers."
  },
  %{
    title: "CSSDay.io Speaker",
    company: "CSSDay.io",
    timeframe: "2016",
    description: "Presented a talk titled \"The In-Betweeners of Responsive Web Design\". Check out the <a href=\"https://www.youtube.com/watch?v=WLAVc18Ugoc\" class=\"link\" target=\"_blank\" rel=\"noopener\">recording</a> and <a href=\"https://slides.com/praliedutzel/cssday-rwd\" class=\"link\" target=\"_blank\" rel=\"noopener\">slides</a> from the event."
  },
  %{
    title: "Phoenix ADDY Award",
    company: "PXG",
    timeframe: "2016",
    description: "Won an ADDY award for PXG’s responsive website design during my time at BIG YAM."
  },
  %{
    title: "Phoenix ADDY Award",
    company: "Valley of the Sun YMCA",
    timeframe: "2015",
    description: "Won an ADDY award for the Valley of the Sun YMCA’s responsive website design during my time at BIG YAM."
  }
]

for experience <- experiences do
  %Experience{}
  |> Experience.changeset(experience)
  |> Repo.insert!()
end
