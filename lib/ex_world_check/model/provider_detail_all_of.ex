# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ProviderDetailAllOf do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :sources
  ]

  @type t :: %__MODULE__{
          :sources => [ExWorldCheck.Model.ProviderSource.t()] | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.ProviderDetailAllOf do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:sources, :list, ExWorldCheck.Model.ProviderSource, options)
  end
end
