# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ResolutionFields do
  @moduledoc """
  Describes all resolution fields (statuses, risks and reasons) in detail.
  """

  @derive JSON.Encoder
  defstruct [
    :statuses,
    :risks,
    :reasons
  ]

  @type t :: %__MODULE__{
          :statuses => [ExWorldCheck.Model.ResolutionField.t()],
          :risks => [ExWorldCheck.Model.ResolutionField.t()],
          :reasons => [ExWorldCheck.Model.ResolutionField.t()]
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:statuses, :list, ExWorldCheck.Model.ResolutionField)
    |> Deserializer.deserialize(:risks, :list, ExWorldCheck.Model.ResolutionField)
    |> Deserializer.deserialize(:reasons, :list, ExWorldCheck.Model.ResolutionField)
  end
end
