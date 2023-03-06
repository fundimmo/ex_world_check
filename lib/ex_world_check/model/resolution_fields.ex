# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ResolutionFields do
  @moduledoc """
  Describes all resolution fields (statuses, risks and reasons) in detail.
  """

  @derive [Poison.Encoder]
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
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ResolutionFields do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:statuses, :list, ExWorldCheck.Model.ResolutionField, options)
    |> deserialize(:risks, :list, ExWorldCheck.Model.ResolutionField, options)
    |> deserialize(:reasons, :list, ExWorldCheck.Model.ResolutionField, options)
  end
end
