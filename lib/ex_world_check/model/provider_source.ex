# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.ProviderSource do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :abbreviation,
    :creationDate,
    :identifier,
    :importIdentifier,
    :name,
    :provider,
    :providerSourceStatus,
    :regionOfAuthority,
    :subscriptionCategory,
    :type
  ]

  @type t :: %__MODULE__{
          :abbreviation => String.t(),
          :creationDate => DateTime.t() | nil,
          :identifier => String.t(),
          :importIdentifier => String.t() | nil,
          :name => String.t(),
          :provider => ExWorldCheck.Model.Provider.t() | nil,
          :providerSourceStatus => String.t(),
          :regionOfAuthority => String.t() | nil,
          :subscriptionCategory => String.t() | nil,
          :type => ExWorldCheck.Model.ProviderSourceType.t()
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:provider, :struct, ExWorldCheck.Model.Provider)
    |> Deserializer.deserialize(:type, :struct, ExWorldCheck.Model.ProviderSourceType)
  end
end
