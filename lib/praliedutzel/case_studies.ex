defmodule Praliedutzel.CaseStudies do
  @moduledoc """
  The context for case studies, which act as the main portfolio of work.
  """

  import Ecto.Query, warn: false
  alias Praliedutzel.Repo

  alias Praliedutzel.CaseStudies.CaseStudy

  @doc """
  Returns the list of case studies.

  ## Examples

      iex> list_case_studies()
      [%CaseStudy{}, ...]

  """
  def list_case_studies do
    Repo.all(CaseStudy)
  end

  @doc """
  Gets a single case study.

  Raises `Ecto.NoResultsError` if the case study does not exist.

  ## Examples

      iex> get_case_study!(123)
      %CaseStudy{}

      iex> get_case_study!(456)
      ** (Ecto.NoResultsError)

  """
  def get_case_study!(slug), do: Repo.get_by!(CaseStudy, slug: slug)

  @doc """
  Creates a case study.

  ## Examples

      iex> create_case_study(%{field: value})
      {:ok, %CaseStudy{}}

      iex> create_case_study(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_case_study(attrs \\ %{}) do
    %CaseStudy{}
    |> CaseStudy.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a case study.

  ## Examples

      iex> update_case_study(case_study, %{field: new_value})
      {:ok, %CaseStudy{}}

      iex> update_case_study(case_study, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_case_study(%CaseStudy{} = case_study, attrs) do
    case_study
    |> CaseStudy.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a case study.

  ## Examples

      iex> delete_case_study(case_study)
      {:ok, %CaseStudy{}}

      iex> delete_case_study(case_study)
      {:error, %Ecto.Changeset{}}

  """
  def delete_case_study(%CaseStudy{} = case_study) do
    Repo.delete(case_study)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking case study changes.

  ## Examples

      iex> change_case_study(case_study)
      %Ecto.Changeset{data: %CaseStudy{}}

  """
  def change_case_study(%CaseStudy{} = case_study, attrs \\ %{}) do
    CaseStudy.changeset(case_study, attrs)
  end
end
