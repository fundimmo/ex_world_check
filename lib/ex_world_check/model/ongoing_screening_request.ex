# NOTE: This file is auto generated by OpenAPI Generator 6.4.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.OngoingScreeningRequest do
  @moduledoc """
  Request containing ongoing screening details
  """

  @derive [Poison.Encoder]
  defstruct [
    :providerTypes,
    :note
  ]

  @type t :: %__MODULE__{
          :providerTypes => [ExWorldCheck.Model.OngoingScreeningProviderType.t()] | nil,
          :note => String.t() | nil
        }
end

defimpl Poison.Decoder, for: ExWorldCheck.Model.OngoingScreeningRequest do
  import ExWorldCheck.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :providerTypes,
      :list,
      ExWorldCheck.Model.OngoingScreeningProviderType,
      options
    )
  end
end