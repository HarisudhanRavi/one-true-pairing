defmodule OneTruePairing.Projects.Track do
  # @related [test](test/one_true_pairing/projects/track_test.exs)
  use Ecto.Schema
  import Ecto.Changeset

  schema "tracks" do
    field :title, :string
    field :project_id, :id

    timestamps()
  end

  def changeset(track, attrs) do
    track
    |> cast(attrs, [:title, :project_id])
    |> validate_required([:project_id])
  end
end
