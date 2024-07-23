alias Praliedutzel.{Repo, CaseStudies.CaseStudy}

case_studies = [
  %{
    title: "Online Powersports Vehicle Marketplace for Polaris Xchange",
    slug: "polaris-xchange-marketplace",
    teaser_text: "Polaris was looking to launch a unified marketplace where customers could shop for powersports vehicles online, and our team at Joydrive delivered a robust set of tools to do just that.",
    tags: ["UX design", "Elixir development"],
    goal: "Create a new online marketplace to shop for powersports vehicles, powered by dealer tools for inventory and leads management and a wholesale auction system.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "Component development", "Accessibility", "Interaction design", "HTML email development"],
    tools: ["Figma", "Elixir", "Phoenix", "LiveView", "JavaScript"],
    features: ["Online marketplace", "Saved search", "Trade-in estimator", "Instant pre-qualification", "Vehicle condition reports", "Accessories integration", "Inventory management", "Wholesale auction", "Demo rides", "Pre-sale"],
    client: "Polaris Xchange",
    link: "https://polarisxchange.com/",
    callout: "changes"
  },
  %{
    title: "Website Redesign for Joydrive",
    slug: "joydrive-website-redesign",
    teaser_text: "As Joydrive expanded from being an automotive marketplace into building technology solutions for external clients, they were in need of a website refresh to reflect their growing business.",
    tags: ["UI design", "Elixir development"],
    goal: "Redesign Joydrive's website to better incorporate their expansion into building technology solutions for external clients, as well as refresh the design that hadn't changed much since their start-up days.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "Component development", "Accessibility", "Prototyping", "Animation", "Information architecture", "Copywriting"],
    tools: ["Figma", "Elixir", "Phoenix", "JavaScript"],
    features: ["Modern design", "Animations", "More digestible copy", "Standardized patterns", "Accessible color palette"],
    client: "Joydrive",
    link: "https://joydrive.com/",
    callout: "changes"
  },
  %{
    title: "Multi-Brand Theme Support on the Joydrive Platform",
    slug: "joydrive-multi-brand-theme-support",
    teaser_text: "As Joydrive expanded to support multiple brands across their platform, our team implemented creative solutions to incorporate logos, colors, and more for brands like Subaru, Toyota, and Polaris.",
    tags: ["UI design", "Elixir development"],
    goal: "Build tools and systems to support theming for multiple brands on the Joydrive platform that can be utilized across Figma, Sass, the Elixir codebase, and HTML emails.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "Accessibility", "HTML email development", "Documentation"],
    tools: ["Figma", "Elixir", "Phoenix"],
    features: ["Multi-brand support", "Digital retailing", "Design tokens", "Sass themes", "CSS variables", "Color contrast checker"],
    client: "Joydrive",
    link: "",
    callout: "nda"
  },
  %{
    title: "Internal Productivity Tools for Vrbo",
    slug: "vrbo-internal-tools",
    teaser_text: "Looking to streamline the workflows of their property owner support specialists, Vrbo looked to our small team of UX designers and engineers to build a set of internal tools they could use to improve their day-to-day.",
    tags: ["UX design", "React development"],
    goal: "Consolidate multiple tools and reports into a streamlined product that allows property owner support specialists to gauge their performance, prioritize their work, and review in-depth data on the accounts they manage.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "Component development", "Accessibility", "Interaction design", "Prototyping", "Animation", "Assisted with UX research"],
    tools: ["Sketch", "Figma", "Invision", "React"],
    features: ["Streamlined workflows", "KPI dashboards", "Multi-channel insights", "Increased customer outreach", "Condensed number of tools used", "Feedback loops", "Internal design system", "Data visualizations library"],
    client: "Vrbo",
    link: "",
    callout: "nda"
  },
  %{
    title: "Atlas Design System for Vrbo and Expedia Group",
    slug: "atlas-design-system",
    teaser_text: "Created for internal productivity tools utilized by property owner support specialists at Vrbo, this design system includes robust Sketch and Figma libraries, a set of React components, and extensive documentation.",
    tags: ["UX design", "React development"],
    goal: "Create a set of design patterns and components to standardize the usage of UI elements across internal tools at both Vrbo and Expedia Group.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "Component development", "Accessibility", "Prototyping", "Design ops", "Documentation"],
    tools: ["Sketch", "Figma", "React"],
    features: ["Sketch library", "Figma library", "React components", "Standardized patterns", "Customization options", "Data visualizations library", "Documentation"],
    client: "Vrbo and Expedia Group",
    link: "",
    callout: "nda"
  },
  %{
    title: "Event Site for ElixirConf 2023",
    slug: "elixirconf-2023-website",
    teaser_text: "Set to take place in Orlando, Florida, the premier conference for Elixir developers, ElixirConf, was looking for a fresh design of their 2023 event website to share event details and registration information.",
    tags: ["UI design", "Elixir development"],
    goal: "Design a new look for ElixirConf's 2023 event website, handle the front-end implementation, and continue providing support for adding new features as the event date grew closer.",
    contributions: ["UI/UX design", "UX strategy", "Front-end development", "Component development", "Interaction design", "Documentation"],
    tools: ["Figma", "Elixir", "Phoenix", "LiveView"],
    features: ["Registration integration", "Tailwind integration", "Phoenix components", "LiveView JS commands", "SVG filters", "CSS clip paths", "Image masks"],
    client: "ElixirConf",
    link: "https://2023.elixirconf.com/",
    callout: "changes"
  },
  %{
    title: "E-commerce Website Launch for PXG",
    slug: "pxg-website",
    teaser_text: "The newest golf equipment company on the scene, PXG was looking to make a splash in the marketplace with an e-commerce website that boasted the quality of their products.",
    tags: ["UX design", "E-commerce development"],
    goal: "Build an e-commerce website with support for multiple languages and a focus on highlighting the technology behind each golf club and the pros who use them.",
    contributions: ["UI/UX design", "UX strategy", "Design systems management", "Front-end development", "CMS integration", "Interaction design", "Prototyping", "Animation", "HTML email development"],
    tools: ["Photoshop", "Kentico", "JavaScript"],
    features: ["E-commerce system", "360-degree club rotations", "Parallax club cutaways", "Internationalization", "Interactive maps", "Full-page videos", "Fully responsive", "Responsive tables"],
    client: "PXG",
    link: "",
    callout: "unavailable"
  },
  %{
    title: "AdTech-focused Blog for Freestar",
    slug: "freestar-blog",
    teaser_text: "A leader in AdTech and monetization strategy, Freestar was looking to bring their website redesign to life with fresh designs and a custom WordPress build that would allow their team to manage everything on their own.",
    tags: ["UX design", "WordPress development"],
    goal: "Collaborate with Freestar's in-house designer to create a custom WordPress build that would refresh the company's website, expand on their blog, and allow their team to manage the site on their own.",
    contributions: ["UX strategy", "Front-end development", "CMS integration", "Interaction design", "Prototyping", "Animation"],
    tools: ["Photoshop", "Invision", "WordPress", "JavaScript"],
    features: ["Fully responsive", "Reading time calculations", "Scrolling interactions", "Custom WordPress theme", "Custom post types"],
    client: "Freestar",
    link: "",
    callout: "unavailable"
  },
  %{
    title: "Developer Resource Portal for BIG YAM",
    slug: "big-yam-developer-resource-portal",
    teaser_text: "To better support the onboarding experience for new developers, I developed an internal resource portal for the team at BIG YAM, The Parsons Agency that included best practices, workflows, and even tips and tricks.",
    tags: ["UI design", "WordPress development"],
    goal: "Improve the onboarding experience for new developers, as well as provide code samples and a learning resource for the team to keep up with best practices on areas like web performance and accessibility.",
    contributions: ["UI/UX design", "UX strategy", "Front-end development", "CMS integration", "Information architecture", "Documentation", "Copywriting"],
    tools: ["Photoshop", "WordPress", "JavaScript"],
    features: ["Onboarding", "Fully responsive", "Custom WordPress theme", "Custom post types"],
    client: "BIG YAM, The Parsons Agency",
    link: "",
    callout: "nda"
  },
  %{
    title: "Multi-language E-commerce Solution for yurbuds",
    slug: "yurbuds-ecommerce-website",
    teaser_text: "Prior to their acquisition by HARMAN, yurbuds looked to the team at BIG YAM to create a robust e-commerce site for their growing number of products, all with support for multiple languages.",
    tags: ["UX design", "E-commerce development"],
    goal: "Create a robust e-commerce site to showcase yurbuds' vibrant products in multiple languages and currencies, as well as manage their growing inventory in a single place.",
    contributions: ["UX strategy", "Front-end development", "CMS integration", "Interaction design", "HTML email development"],
    tools: ["Photoshop", "PrestaShop", "JavaScript"],
    features: ["E-commerce system", "Fully responsive", "Internationalization", "Product color swap", "Reviews integration", "Product comparison", "Predictive search"],
    client: "yurbuds",
    link: "",
    callout: "unavailable"
  },
  %{
    title: "Membership Website for Valley of the Sun YMCA",
    slug: "valley-of-the-sun-ymca-website",
    teaser_text: "Encompassing over fifteen YMCA branches across Arizona, Valley of the Sun YMCA needed a website that allowed users to quickly see available activities at nearby branches and manage scheduling.",
    tags: ["E-commerce development", "WordPress development"],
    goal: "Create a powerful membership website for Valley of the Sun YMCA that gives users the tools to see available activities at nearby branches and manage their family's scheduling.",
    contributions: ["UX strategy", "Front-end development", "CMS integration", "Accessibility", "Animation"],
    tools: ["Photoshop", "WordPress"],
    features: ["E-commerce system", "Membership login", "Scheduling integration", "Internationalization", "Custom WordPress theme", "Live social feeds", "Fully responsive"],
    client: "Valley of the Sun YMCA",
    link: "",
    callout: "unavailable"
  },
  %{
    title: "Philanthropy Website for The Bob & Renee Parsons Foundation",
    slug: "bob-renee-parsons-foundation-website",
    teaser_text: "A leader in philanthropy in Arizona, The Bob & Renee Parsons Foundation was in need of a website redesign that better highlighted their story, community efforts, and grant opportunities.",
    tags: ["UX design", "WordPress development"],
    goal: "Build a redesigned website that gives The Bob & Renee Parsons Foundation the ability to highlight their community efforts, manage intake for grant opportunities, and provide updates on their impact.",
    contributions: ["UX strategy", "Front-end development", "CMS integration", "Interaction design", "Prototyping", "Animation", "HTML email development"],
    tools: ["Photoshop", "WordPress"],
    features: ["Grant eligibility flow", "Responsive event timeline", "Live Twitter feed", "Fully responsive", "Custom WordPress theme", "Custom post types"],
    client: "The Bob & Renee Parsons Foundation",
    link: "https://tbrpf.org/",
    callout: "changes"
  }
]

for case_study <- case_studies do
  %CaseStudy{}
  |> CaseStudy.changeset(case_study)
  |> Repo.insert!()
end
