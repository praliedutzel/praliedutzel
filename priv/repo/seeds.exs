# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Praliedutzel.Repo.insert!(%Praliedutzel.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Code.require_file("seeds/experience.exs", __DIR__)
Code.require_file("seeds/case_studies.exs", __DIR__)
