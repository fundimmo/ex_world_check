# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.IdentityDocument do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :entity,
    :expiryDate,
    :issueDate,
    :issuer,
    :locationType,
    :number,
    :type
  ]

  @type t :: %__MODULE__{
          :entity => ExWorldCheck.Model.Entity.t() | nil,
          :expiryDate => String.t() | nil,
          :issueDate => String.t() | nil,
          :issuer => String.t() | nil,
          :locationType => ExWorldCheck.Model.IdentityDocumentLocationType.t() | nil,
          :number => String.t() | nil,
          :type => String.t() | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:entity, :struct, ExWorldCheck.Model.Entity)
    |> Deserializer.deserialize(
      :locationType,
      :struct,
      ExWorldCheck.Model.IdentityDocumentLocationType
    )
  end
end
