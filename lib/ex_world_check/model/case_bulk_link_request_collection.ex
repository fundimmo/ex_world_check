# NOTE: This file is auto generated by OpenAPI Generator 7.13.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ExWorldCheck.Model.CaseBulkLinkRequestCollection do
  @moduledoc """
  A request body on Bulk Update Case Links
  """

  @derive JSON.Encoder
  defstruct [
    :link,
    :relationshipType,
    :caseSystemIds,
    :note
  ]

  @type t :: %__MODULE__{
          :link => boolean(),
          :relationshipType => String.t(),
          :caseSystemIds => [ExWorldCheck.Model.CaseBulkLinkRequest.t()],
          :note => String.t() | nil
        }

  alias ExWorldCheck.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:caseSystemIds, :list, ExWorldCheck.Model.CaseBulkLinkRequest)
  end
end
