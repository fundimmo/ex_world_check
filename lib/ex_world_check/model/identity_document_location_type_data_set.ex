# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.IdentityDocumentLocationTypeDataSet do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :identityDocumentLocationTypes
  ]

  @type t :: %__MODULE__{
          :identityDocumentLocationTypes =>
            [ExWorldCheck.Model.IdentityDocumentLocationType.t()] | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :identityDocumentLocationTypes,
      :list,
      ExWorldCheck.Model.IdentityDocumentLocationType
    )
  end
end
